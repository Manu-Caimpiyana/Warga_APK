# Spesifikasi Alur Fitur End-to-End (Feature Flows)

> Referensi Arsitektur: [architecture.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/architecture.md)  
> Referensi Routing: [routing_and_rbac.md](file:///d:/Projects/Warga%20APK/warga_app/docs/specs/routing_and_rbac.md)  
> Referensi API: [api-documentation.md](file:///d:/Projects/Warga%20APK/warga_app/docs/api/api-documentation.md)

---

## 1. Modul Autentikasi (`features/auth`)

### 1.1 Form Login (`/login`)
- **Tampilan**: Input field NIK (16 digit), input field Password, tombol "Masuk".
- **Validasi Klien**:
  - NIK tidak boleh kosong, harus berupa angka, minimal 16 digit.
  - Password tidak boleh kosong, minimal 6 karakter.
- **Endpoint API**:
  - `POST /Auth/Login`
  - Request Body: `{ "szNik": "...", "szPassword": "..." }`
- **Alur Sukses**:
  1. Menerima `LoginResponseData` (`bSuccess: true`).
  2. Simpan `token` dan serialisasi object `user` ke `FlutterSecureStorage`.
  3. Update `authControllerProvider` menjadi state `Authenticated`.
  4. GoRouter mengarahkan ke `/home`.
- **Alur Gagal**:
  - Server mengembalikan status 200 dengan `bSuccess: false`.
  - Contoh pesan: *"Nomor Induk Keluarga (NIK) tidak terdaftar."* atau *"Kata sandi yang anda masukan salah."*
  - Tangkap via `ApiException`, tampilkan SnackBar error dengan pesan tersebut.

### 1.2 Logout & Sesi Expired
- **Aksi Pengguna**: Tombol "Keluar" di layar Profile atau pemicu otomatis via HTTP 401.
- **Proses**:
  1. Hapus token dan cache user dari `FlutterSecureStorage`.
  2. Reset state provider terkait (invalidate `homeDashboardProvider`, `myBillsProvider`, dll).
  3. Redirect GoRouter kembali ke `/login`.

---

## 2. Modul "Untuk Saya" / Home (`features/home`)

Layar beranda warga menyatukan 3 panggilan data yang dieksekusi secara konkuren:
1. `DashBoard/Get`
2. `Info/GetAvailableInfo`
3. `Activity/GetNextActivities`

### 2.1 Header Sapaan & Profil
- **Endpoint**: `DashBoard/Get`
- **Respons**: Field `szGreeting` (contoh: `"Selamat Siang<br/>Ibu Nia"`).
- **Penanganan**: Gunakan `HtmlTextSanitizer.splitBreakLines` untuk merender:
  - Baris 1: Sapaan waktu (Selamat Pagi / Siang / Sore / Malam)
  - Baris 2: Nama panggilan warga dengan font bold

### 2.2 Kartu Saldo Kas RT
- **Respons**: `decCashSaldo` (tipe number).
- **Format UI**: Ditampilkan dengan format mata uang Indonesia `Rp 1.621.000` (`NumberFormat.currency(symbol: 'Rp ', decimalDigits: 0)`).
- **Tombol Aksi**:
  - **"Muat Ulang"**: Memicu refresh manual data dashboard.
  - **"Chat Warga"**: Navigasi ke fitur Chat (`/chat`).

### 2.3 Banner Tugas Warga (Status Tagihan)
- **Respons**:
  - `bHasOpenBilled`: boolean
  - `intOpenBill`: jumlah tagihan belum lunas
- **Kondisi UI**:
  - Jika `bHasOpenBilled == false` (atau `intOpenBill == 0`):
    - Tampilkan banner hijau: *"Tugas Anda: Tidak ada tagihan yang belum dibayar 😍"*
  - Jika `bHasOpenBilled == true`:
    - Tampilkan banner oranye/peringatan: *"Anda memiliki $intOpenBill tagihan yang belum dibayar. Klik untuk bayar."*
    - Klik banner langsung mengarahkan pengguna ke tab `/billing`.

### 2.4 Carousel "Sekilas Info"
- **Endpoint**: `GET /Info/GetAvailableInfo`
- **Tampilan**: Horizontal carousel card dengan background image (`szImageUrl`), judul info (`szName`), dan snippet ringkasan.

### 2.5 Agenda Warga Berikutnya ("Upcoming Event(s)")
- **Endpoint**: `GET /Activity/GetNextActivities`
- **Tampilan**:
  - Jika kosong (`items.isEmpty`): Tampilkan empty state *"Belum ada agenda warga selanjutnya."*
  - Jika ada data: Tampilkan list kartu agenda dengan tanggal kegiatan (`dtmEventDate`), judul (`szName`), dan deskripsi (`szDescription`).

---

## 3. Modul Tagihan Warga (`features/billing`)

### 3.1 Layar Tagihan Saya (`/billing`)
- **Endpoint**: `GET /Billing/MyBill`
- **Respons**: Mengembalikan list `MyBillItemData` yang memiliki relasi bersarang:
  - `billing`: info pokok tagihan (`decAmount`, `decRemain`, `bClosed`, `dtmDue`, `szDescription`)
  - `billingPayments`: riwayat pembayaran untuk tagihan ini (`decPayment`, `dtmDoc`)
- **Struktur Tab UI**:
  1. **Tab "Belum Lunas"**: Filter item dengan `billing.bClosed == false` atau `billing.decRemain > 0`.
  2. **Tab "Lunas"**: Filter item dengan `billing.bClosed == true` dan `billing.decRemain == 0`.
  3. **Tab "Semua"**: Menampilkan seluruh riwayat tagihan terurut tanggal terbaru.

### 3.2 Kartu Tagihan (Bill Card)
- Judul Tagihan: Dari `billing.szDescription` (sudah siap-tampil dari backend, contoh: *"Iuran Rutin 50 a/n : Aang Rangga Cipta Periode : Februari 2026"*).
- Jatuh Tempo: Format dari `billing.dtmDue`.
- Nominal: `decAmount` dan sisa `decRemain`.
- Status Badge: "Lunas" (hijau) atau "Belum Lunas" (merah/oranye).

---

## 4. Modul Profil & Anggota Keluarga (`features/profile`)

### 4.1 Pemisahan Entity `Citizen` vs `CitizenInfo`
> **Aturan Domain Krusial**:
> - **`Citizen`** = Entitas 1 Kartu Keluarga (KK). Memegang `gdId` KK dan referensi `gdBillTemplateId` tarif iuran rumah.
> - **`CitizenInfo`** = Entitas individu (perorangan). Memegang data pribadi, NIK (`szCardId`), nomor HP, email, agama, dan relasi `gdParentId` ke `Citizen`.

### 4.2 Layar Profil Pribadi (`/profile`)
- **Endpoint**: `GET /Citizen/GetProfile`
- **Respons**: `CitizenInfoData` milik akun yang sedang login.
- **Data Lookup**:
  - Nama Agama: lookup `gdReligionId` ke list `Religion/GetList`.
  - Gelar/Panggilan: lookup `gdTittleId` ke list `Tittle/GetList`.
- **Fitur Edit Profil (`/profile/edit`)**:
  - Mengirim payload ke `PUT /Citizen/UpdateCitizenInfo`.

### 4.3 Layar Anggota Keluarga (`/profile/family`)
- Mengambil anggota keluarga di bawah 1 KK yang sama:
  - Gunakan `gdParentId` dari profil user login.
  - Panggil `GET /Citizen/GetCitizenInfoList?gdParentId={gdParentId}`.
- **Form Tambah Anggota (`/profile/family/add`)**:
  - Input: NIK individu (`szCardId`), Nama Lengkap (`szName`), Nama Panggilan (`szNickName`), Tanggal Lahir (`dtmBirth`), Agama, No HP.
  - Endpoint: `POST /Citizen/CreateCitizenInfo` dengan `gdParentId` diset ke ID KK.

---

## 5. Modul Pengurus RT / Admin (`features/admin`)

Hanya dapat diakses oleh user dengan `bOfficer == true`.

### 5.1 Menu Pusat Admin (`/admin`)
Menampilkan grid/list menu manajemen:
1. **Template Tagihan**: Kelola jenis iuran warga.
2. **Data Warga**: Manajemen Kartu Keluarga & rumah tangga.
3. **Kas RT**: Laporan keuangan warga (khusus `bFinance == true`).
4. **Manajemen User**: Manajemen kredensial petugas RT.

### 5.2 Kelola Template Tagihan (`/admin/templates`)
- **Endpoint**: `BillTemplate/GetList`, `BillTemplate/Create`, `BillTemplate/Update`, `BillTemplate/Delete`
- Field utama: `szName`, `szDescription`, `bOccurence` (menandai tagihan recurring/berulang), dan `items` (daftar nominal per kategori).

### 5.3 Data Warga KK (`/admin/citizens`)
- **Endpoint**: `Citizen/GetList`, `Citizen/Get`, `Citizen/Create`, `Citizen/Update`
- Menampilkan daftar seluruh rumah tangga di RT 04 (39 KK).
- Menghubungkan KK dengan `gdBillTemplateId` untuk penetapan besaran iuran rutin bulanan rumah tersebut.

### 5.4 Kas RT (`/admin/kas-rt`)
- **Syarat Akses**: `bOfficer == true && bFinance == true`.
- **Endpoint**:
  - `CashInOut/ViewCashInOut?PeriodType=monthly` untuk melihat rekap buku kas.
  - `CashInOut/DownloadViewCashInOut?PeriodType=monthly` untuk export laporan Excel.
  - CRUD transaksi kas masuk/keluar: `CashInOut/Create` (`decAmount`, `szType`: "IN" | "OUT", `szDescription`, `dtmTransactionDate`).

### 5.5 Manajemen User Petugas (`/admin/users`)
- **Endpoint**: `User/GetList`, `User/Create`, `User/Update`
- Form aktivasi akses:
  - Checkbox Petugas RT: memetakan field `bOfficer` (boolean).
  - Checkbox Akses Keuangan: memetakan field `bFinance` (boolean).

# WargaRT04 API — Dokumentasi Endpoint

> Sumber: `https://dev.buatapaaja.com/wargart04dev/openapi/v1.json`
> Referensi interaktif (Scalar): `https://dev.buatapaaja.com/wargart04dev/scalar/`
> Base URL: `https://dev.buatapaaja.com/wargart04dev`
> Terakhir ditarik: dari spesifikasi OpenAPI 3.0.1, title `WargaRT04.Api | v1`
> ✅ Konvensi penamaan & envelope response sudah **dikonfirmasi** dari hasil test langsung ke `Auth/Login` (lihat bagian 1 & 6)

---

## 1. Konvensi Umum

| Aspek | Keterangan |
|---|---|
| Format ID | Semua entity pakai **GUID/UUID** (parameter `gdId`), bukan integer |
| **Response envelope (✅ terkonfirmasi)** | `{ "bSuccess": bool, "szMessage": string, "oResult": object\|null, "oResultType": string\|null }` |
| **Konvensi penamaan field (✅ terkonfirmasi — Hungarian notation)** | Lihat tabel prefix di bawah |
| Auth (✅ terkonfirmasi) | JWT Bearer token. Kirim via header `Authorization: Bearer <token>` di setiap request setelah login |
| Format request body | Umumnya dikirim sebagai `application/json` (juga menerima `text/json` dan `application/*+json`) |

### Tabel Prefix Penamaan Field (Hungarian Notation)
| Prefix | Tipe data | Contoh (dari hasil test asli) |
|---|---|---|
| `sz` | string | `szName`, `szEmail`, `szMessage`, `szNik` |
| `b` | boolean | `bSuccess`, `bOfficer`, `bFinance`, `bInActive` |
| `gd` | GUID/UUID | `gdId`, `gdUserCreatedId` |
| `dtm` | DateTime | `dtmCreated`, `dtmLastUpdated` |
| `int` | integer | `intIndex` |
| `o` | object (generic) | `oResult`, `oResultType` |
| `dec` / `dbl` | decimal/double (dugaan, belum terkonfirmasi) | kemungkinan dipakai untuk field nominal uang di `Billing`/`CashInOut` |

### Pola Audit Trail (`dataStatus`) — ✅ terkonfirmasi, kemungkinan ada di SEMUA entity
Dari hasil test `Auth/Login`, terlihat setiap record entity (dicontohkan lewat object `user`) membawa sub-object `dataStatus` berisi jejak audit:
```json
"dataStatus": {
  "gdUserCreatedId": "...",
  "szUserCreatedNm": null,
  "gdUserUpdatedId": "...",
  "szUserUpdatedNm": null,
  "dtmCreated": "2026-01-06T17:24:29.047",
  "dtmLastUpdated": "2026-01-06T17:24:29.243",
  "bInActive": false
}
```
✅ **Terkonfirmasi** lewat `DashBoard/Get`, `Citizen/GetProfile`, `Billing/MyBill`, `Citizen/GetList`, `BillTemplate/GetList`: field `gdId`, `intIndex`, `bUpdated` konsisten muncul di SEMUA entity. `dataStatus` juga konsisten muncul di semua entity **kecuali** `DashBoard/Get` (yang memang bukan entity tersimpan, jadi wajar tidak ada audit trail).

### ✅ Temuan Struktur Data Penting — Citizen vs CitizenInfo
Ternyata **`Citizen` (data per Kartu Keluarga) dan `CitizenInfo` (data personal tiap individu) adalah dua entity terpisah yang saling berelasi**, bukan satu entity flat:
- **`Citizen`** = satu baris per rumah tangga/KK. Isinya: `szCardId` (No. KK, duplikat dari kepala keluarga), `gdCitizenInfoId` (FK ke `CitizenInfo` kepala keluarga), object nested `citizenInfo`, `gdBillTemplateId` (tarif iuran rumah itu), `dataStatus`, `gdId`, dst.
- **`CitizenInfo`** = satu baris per individu (bisa kepala keluarga atau anggota keluarga). Isinya: `gdParentId` (FK balik ke `Citizen`/KK-nya), `szCardId` (NIK individu), `szName`, `szDescription` (jabatan RT kalau ada, mis. `"02. Bendahara"`), `gdTittleId`, `dtmBirth`, `gdReligionId`, `szNickName`, `szPhoneNo`, `szEmail`, `dataStatus`, `gdId`, dst.
- `Citizen/GetProfile` mengembalikan `CitizenInfo` milik user yang login (bukan `Citizen`-nya langsung).
- `Citizen/GetCitizenInfoList?gdParentId=` mengembalikan semua `CitizenInfo` (anggota keluarga) di bawah satu `Citizen`/KK.

### ⚠️ Inkonsistensi Penamaan yang Perlu Diwaspadai
- NIK punya **dua nama field berbeda** tergantung entity: `szNik` di entity `User` (dipakai untuk login), tapi `szCardId` di entity `Citizen`/`CitizenInfo`. **Jangan disamakan.**
- ID referensi ke `BillTemplate` juga tidak konsisten: `Citizen.gdBillTemplateId` vs `Billing.gdBillingTemplateId` (ada huruf "ing" ekstra di yang kedua). Salin persis, jangan disamakan otomatis.
- Field gelar konsisten pakai **`gdTittleId`** (double-T, mengikuti "typo" nama controller `Tittle`) — ini bukan bug, pertahankan ejaan ini di kode Flutter.
- `BillTemplate` **tidak** punya field nominal langsung (`bOccurence` untuk boolean recurring, bukan `bIsRecurring` seperti dugaan awal) — nominalnya ada di `items[]` (misal item "Standard 50" → `decAmount: 50000`). Field `items` bernilai `null` di `GetList` biasa, tapi terisi saat di-nest di dalam response `Billing/MyBill`.

### ⚠️ Yang Masih Perlu Diverifikasi
- [x] ~~Bentuk pasti `ApiResultData`~~ → **Terkonfirmasi**: `bSuccess` / `szMessage` / `oResult` / `oResultType`
- [x] ~~Mekanisme autentikasi~~ → **Terkonfirmasi**: JWT Bearer, klaim token berisi nama, `gdId` (nameidentifier), email, NIK (serialnumber), dan blob `userdata` (JSON string user lengkap)
- [x] ~~Kenapa `DashBoard/Get`, `Citizen/GetProfile`, `Billing/MyBill` kosong~~ → **Terjawab**: hanya perlu header `Authorization: Bearer <token>`, sekarang semua sudah terkonfirmasi (lihat bagian 6)
- [x] ~~Field request body `Auth/Login`~~ → **Terkonfirmasi**: `szUserName` (NIK warga) + `szPassword` (berdasarkan schema OpenAPI `LoginData`)
- [ ] Field-field entity yang belum sempat dites (`ActivityData`, `CashInOutData`, `InfoData`, `ChatData`) — pola penamaannya sudah jelas (Hungarian notation), tapi nama field spesifiknya masih dugaan berdasarkan tampilan UI
- [ ] Format request body untuk `Create`/`Update` di `Citizen`, `CitizenInfo`, `BillTemplate` — response GetList/GetProfile sudah terkonfirmasi, tapi bentuk request saat kirim data baru belum dites

---

## 2. Pola CRUD Generic

Sebagian besar entity (Activity, Billing, BillingPayment, BillTemplate, CashInOut, Chat, Citizen, Info, Religion, Tittle, User) mengikuti **8 endpoint yang identik polanya**:

| Method | Path | Fungsi | Body / Parameter |
|---|---|---|---|
| GET | `/{Entity}/GetList` | Ambil semua data | — |
| GET | `/{Entity}/Get` | Ambil satu data | query `gdId` (uuid) |
| GET | `/{Entity}/IsExist` | Cek apakah data ada | query `gdId` (uuid) |
| POST | `/{Entity}/Create` | Tambah data baru | body `{Entity}Data` |
| PUT | `/{Entity}/Update` | Update data | body `{Entity}Data` |
| DELETE | `/{Entity}/Delete` | Hapus data | query `gdId` (uuid) |
| POST | `/{Entity}/FetchData` | List dengan pagination/filter | body `GridRequestData` |
| POST | `/{Entity}/FetchDataUsingDataSource` | List dengan datasource query (server-side grid) | body `DataSourceRequest` |

Karena polanya seragam, di Flutter cukup dibuatkan **satu generic repository class** yang menerima nama entity path + fungsi `fromJson`/`toJson`, lalu dipakai ulang untuk semua entity di atas (lihat bagian 5).

---

## 3. Referensi Lengkap per Modul

### 3.1 Auth
| Method | Path | Parameter/Body | Fitur terkait |
|---|---|---|---|
| POST | `/Auth/Login` | body `LoginData` (`szUserName`, `szPassword`) | Layar login — ✅ request & response terkonfirmasi |
| GET | `/Auth/Ping` | — | Health-check / cek token masih valid |
| POST | `/Auth/ChangePassword` | body `ChangePasswordData` | Ganti password |
| POST | `/Auth/CreateDummyData` | — | Seed data dummy (khusus dev, jangan dipanggil di prod) |

### 3.2 DashBoard — ✅ schema terkonfirmasi
| Method | Path | Fitur terkait |
|---|---|---|
| GET | `/DashBoard/Get` | Layar **"Untuk Saya"** — hanya berisi greeting, saldo kas, status tagihan. Info carousel & agenda tetap dari endpoint terpisah (`Info/GetAvailableInfo`, `Activity/GetNextActivities`) |

### 3.3 Citizen — ✅ schema terkonfirmasi (lihat catatan struktur di bagian 1)
Dua entity terpisah yang berelasi: `Citizen` (per Kartu Keluarga) dan `CitizenInfo` (per individu).

| Method | Path | Parameter/Body | Fitur terkait |
|---|---|---|---|
| GET | `/Citizen/GetProfile` | — | Layar **Profile Saya** — mengembalikan `CitizenInfo` milik user login |
| PUT | `/Citizen/UpdateCitizenInfo` | body `CitizenInfoData` | Update info anggota keluarga |
| POST | `/Citizen/CreateCitizenInfo` | body `CitizenInfoData` | Tambah anggota keluarga baru |
| GET | `/Citizen/GetCitizenInfoList` | query `gdParentId` (uuid) | List **Anggota Keluarga** — semua `CitizenInfo` di bawah satu `Citizen` (KK) |

CRUD standar (`GetList`, `Get`, `IsExist`, `Create`, `Update`, `Delete`, `FetchData`, `FetchDataUsingDataSource`) dipakai untuk Admin > **Warga**, beroperasi di level `Citizen` (KK), bukan `CitizenInfo` individu.

### 3.4 Billing (Tagihan) — ✅ schema terkonfirmasi
Mengikuti pola CRUD generic (body `BillingData`), plus:

| Method | Path | Parameter/Body | Fitur terkait |
|---|---|---|---|
| POST | `/Billing/ProcessBilling` | body `BillingProcessData` | Form **"Proses Tagihan"** (generate tagihan massal) |
| GET | `/Billing/MyBill` | — | Tagihan milik warga yang sedang login — mengembalikan `billing` + `billingPayments` bersarang lengkap dengan `billTemplate` dan `citizen` |
| GET | `/Billing/GetBilliingPaymentSummary` | — | Ringkasan pembayaran |

⚠️ Perhatikan: field FK ke `BillTemplate` di sini bernama **`gdBillingTemplateId`** (ada "ing"), beda dengan `Citizen.gdBillTemplateId`.

### 3.5 BillingPayment
CRUD standar saja (body `BillingPaymentData`) — dipakai saat warga membayar tagihan (record pembayaran per bill).

### 3.6 BillTemplate (Template Tagihan) — ✅ schema terkonfirmasi
CRUD standar saja (body `BillTemplateData`) — dipakai untuk Admin > **Template Tagihan** (Iuran Rutin 30/35/40/50, dll). Field: `szName`, `szDescription`, `bOccurence` (bukan `bIsRecurring`), `items` (list line-item nominal, `null` di response `GetList` biasa tapi terisi saat di-nest lewat `Billing/MyBill`).

### 3.7 CashInOut (Kas RT)
Mengikuti pola CRUD generic (body `CashInOutData`), plus:

| Method | Path | Parameter/Body | Fitur terkait |
|---|---|---|---|
| GET | `/CashInOut/ViewCashInOut` | query `PeriodType` | Laporan kas per periode |
| GET | `/CashInOut/DownloadViewCashInOut` | query `PeriodType` | Download laporan kas |

### 3.8 Chat
Mengikuti pola CRUD generic (body `ChatData`), plus:

| Method | Path | Parameter/Body | Fitur terkait |
|---|---|---|---|
| POST | `/Chat/Send` | body `ChatData` | Kirim pesan (fitur chat in-app) |
| GET | `/Chat/ChatHistories` | query `gdConversationId` (uuid) | Riwayat percakapan |
| GET | `/Chat/GetUnreadChats` | — | Jumlah/list chat belum dibaca |
| GET | `/Chat/MarkAsRead` | query `gdConversationId` (uuid) | Tandai chat sudah dibaca |

### 3.9 Info (Info Warga)
Mengikuti pola CRUD generic (body `InfoData`), plus:

| Method | Path | Fitur terkait |
|---|---|---|
| GET | `/Info/GetAvailableInfo` | Carousel "Sekilas Info" di home |

CRUD standar dipakai untuk Admin > **Buat Info**.

### 3.10 Activity (Agenda Warga)
Mengikuti pola CRUD generic (body `ActivityData`), plus:

| Method | Path | Fitur terkait |
|---|---|---|
| GET | `/Activity/GetNextActivities` | "Upcoming Event(s)" di home |

CRUD standar dipakai untuk Admin > **Agenda Warga**.

### 3.11 User — ✅ schema terkonfirmasi (lihat bagian 6 & 7)
CRUD standar (body `UserData`) — Admin > **User**. Field yang terkonfirmasi lewat response login: `gdId`, `szName`, `szDescription` (jabatan, mis. "Bendahara"), `szEmail`, `szPassword` (hash), `bMustChangePassword`, `szNik`, `bOfficer`, `bFinance`, `szLangId`, `szWelcomePage`, `intIndex`, `bUpdated`, `dataStatus`.

> Catatan arsitektur: checkbox "Petugas RT" di UI Admin > User kemungkinan merepresentasikan `bOfficer`. Field `bFinance` sepertinya permission terpisah khusus untuk akses Kas RT — perlu dicek ke rekan backend apakah ini dipakai untuk role-based access control di endpoint `CashInOut/*`.

### 3.12 Religion & Tittle (data referensi/lookup)
CRUD standar saja untuk masing-masing (body `ReligionData` / `TittleData`) — dipakai untuk mengisi dropdown **Agama** dan **Gelar** di form Profile. Catatan: nama controller "Tittle" (bukan "Title") — typo dari backend, tetap gunakan ejaan ini di kode.

### 3.13 Upload
| Method | Path | Parameter/Body | Fitur terkait |
|---|---|---|---|
| POST | `/Upload/Save` | multipart: `files`, `uploadType`, `newFileName` | Upload foto profil / gambar info |
| POST | `/Upload/Remove` | form-urlencoded: `files` | Hapus file yang sudah diupload |
| GET | `/Upload/GetImage` | query `szUploadFileType`, `imageName`, `ts` | Ambil gambar |
| GET | `/Upload/GetFile` | query `uploadType`, `fileName` | Ambil file non-gambar |

### 3.14 FCM (Push Notification)
| Method | Path | Body | Fitur terkait |
|---|---|---|---|
| POST | `/FCM/SendMessage` | `FCMMessageData` | Kirim push notification |
| POST | `/FCM/RegisterFCMToken` | `FCMTokenData` | Daftarkan token device untuk notifikasi |

### 3.15 ApkUpdate
| Method | Path | Parameter | Fitur terkait |
|---|---|---|---|
| GET | `/ApkUpdate/CheckVersion` | query `szCurrentVersion`, `szApiUrl` | Cek update versi aplikasi |
| GET | `/ApkUpdate/DownloadApk` | — | Download APK versi terbaru |

---

## 4. Pemetaan Endpoint ke Layar Aplikasi (dari tampilan existing)

| Layar di App | Endpoint utama yang dipakai |
|---|---|
| Untuk Saya (Home) | `DashBoard/Get`, `Info/GetAvailableInfo`, `Activity/GetNextActivities` |
| Profile Saya | `Citizen/GetProfile`, `Citizen/UpdateCitizenInfo`, `Religion/GetList`, `Tittle/GetList`, `Upload/Save` |
| Anggota Keluarga | `Citizen/GetCitizenInfoList`, `Citizen/CreateCitizenInfo` |
| Admin > Template Tagihan | `BillTemplate/*` (CRUD standar) |
| Admin > Warga | `Citizen/*` (CRUD standar) |
| Admin > Buat Info | `Info/*` (CRUD standar) |
| Admin > Agenda Warga | `Activity/*` (CRUD standar) |
| Admin > Kas RT | `CashInOut/*`, `CashInOut/ViewCashInOut` |
| Admin > User | `User/*` (CRUD standar) |
| Tagihan (Belum Lunas/Lunas/Semua) | `Billing/MyBill` atau `Billing/FetchData` (untuk admin) |
| Proses Tagihan (form) | `Billing/ProcessBilling` |
| Login | `Auth/Login` ✅ |

---

## 5. Cara Pemakaian di Flutter (ringkas)

Generic repository — sudah diupdate memakai field envelope yang **terkonfirmasi** (`bSuccess`, `oResult`):

```dart
class CrudRepository<T> {
  final Dio dio;
  final String entityPath; // contoh: '/Citizen', '/BillTemplate'
  final T Function(Map<String, dynamic>) fromJson;
  final Map<String, dynamic> Function(T) toJson;

  CrudRepository(this.dio, this.entityPath, this.fromJson, this.toJson);

  Future<List<T>> getList() async {
    final res = await dio.get('$entityPath/GetList');
    final list = res.data['oResult'] as List? ?? [];
    return list.map((e) => fromJson(e)).toList();
  }

  Future<T?> get(String gdId) async {
    final res = await dio.get('$entityPath/Get', queryParameters: {'gdId': gdId});
    return res.data['oResult'] != null ? fromJson(res.data['oResult']) : null;
  }

  Future<bool> create(T item) async {
    final res = await dio.post('$entityPath/Create', data: toJson(item));
    return res.data['bSuccess'] == true;
  }

  Future<bool> update(T item) async {
    final res = await dio.put('$entityPath/Update', data: toJson(item));
    return res.data['bSuccess'] == true;
  }

  Future<bool> delete(String gdId) async {
    final res = await dio.delete('$entityPath/Delete', queryParameters: {'gdId': gdId});
    return res.data['bSuccess'] == true;
  }
}
```

Instansiasi per entity:
```dart
final citizenRepo = CrudRepository<Citizen>(dio, '/Citizen', Citizen.fromJson, (c) => c.toJson());
final billTemplateRepo = CrudRepository<BillTemplate>(dio, '/BillTemplate', BillTemplate.fromJson, (b) => b.toJson());
final cashInOutRepo = CrudRepository<CashInOut>(dio, '/CashInOut', CashInOut.fromJson, (c) => c.toJson());
// dst untuk Activity, Info, User, Religion, Tittle, Chat, BillingPayment
```

Auth repository (pakai schema yang sudah terkonfirmasi):
```dart
class AuthRepository {
  final Dio dio;
  AuthRepository(this.dio);

  Future<LoginResponseData> login(String nik, String password) async {
    final res = await dio.post('/Auth/Login', data: {
      'szUserName': nik,   // terkonfirmasi dari schema OpenAPI LoginData
      'szPassword': password,
    });
    final body = res.data;
    if (body['bSuccess'] == true) {
      return LoginResponseData.fromJson(body['oResult']);
    }
    throw ApiException(body['szMessage'] ?? 'Login gagal.');
  }
}
```

---

## 6. Contoh Request & Response JSON per Endpoint

### ✅ Auth/Login — TERKONFIRMASI dari hasil test asli

**Response sukses:**
```json
{
  "bSuccess": true,
  "szMessage": "",
  "oResult": {
    "user": {
      "szName": "Nia Kurnia Agustina",
      "szDescription": "Bendahara",
      "szEmail": "bunbun.antik2@gmail.com",
      "szPassword": "<hash — jangan pernah ditampilkan ke UI>",
      "bMustChangePassword": null,
      "szNik": "3271024708840002",
      "bOfficer": true,
      "bFinance": true,
      "szLangId": "id-ID",
      "szWelcomePage": null,
      "dataStatus": {
        "gdUserCreatedId": "1eb5866b-da85-4aa2-87d8-2f072a164f22",
        "szUserCreatedNm": null,
        "gdUserUpdatedId": "1eb5866b-da85-4aa2-87d8-2f072a164f22",
        "szUserUpdatedNm": null,
        "dtmCreated": "2026-01-06T17:24:29.047",
        "dtmLastUpdated": "2026-01-06T17:24:29.243",
        "bInActive": false
      },
      "gdId": "1eb5866b-da85-4aa2-87d8-2f072a164f22",
      "intIndex": null,
      "bUpdated": null
    },
    "szWelcomePage": "welcome",
    "token": "<JWT token>"
  },
  "oResultType": "LoginResponseData"
}
```

**Response gagal (dua contoh nyata):**
```json
{
  "bSuccess": false,
  "szMessage": "Nomor Induk Keluarga (NIK) tidak terdaftar.",
  "oResult": null,
  "oResultType": null
}
```
```json
{
  "bSuccess": false,
  "szMessage": "Kata sandi yang anda masukan salah. Mohon untuk memasukan kata sandi yang benar.",
  "oResult": null,
  "oResultType": null
}
```

**Catatan isi JWT token** (hasil decode payload, untuk referensi — jangan pernah hardcode token asli di kode produksi):
- Klaim nama, `nameidentifier` (= `gdId` user), `emailaddress`, `serialnumber` (= NIK)
- Klaim `userdata` berisi blob JSON lengkap dari object `user` di atas (di-stringify)
- `iss`: "Warga RT04/05 Corp Bandung", `aud`: "Warga RT04/05 Bogor"
- `exp` sangat jauh ke depan — kemungkinan token berlaku lama, perlu dikonfirmasi apakah ada mekanisme refresh token terpisah atau memang sengaja didesain long-lived untuk kemudahan warga

**Request** (dugaan, berdasarkan bunyi pesan error yang menyebut "NIK" dan konvensi `sz` yang sudah terkonfirmasi):
```json
{
  "szNik": "3271024708840002",
  "szPassword": "rahasia123"
}
```
> Field request ini masih dugaan — kalau salah, kirimkan hasil "Try it" dari Scalar untuk request body-nya biar saya pastikan.

### ✅ DashBoard/Get — TERKONFIRMASI
```json
{
  "bSuccess": true,
  "szMessage": "Success",
  "oResult": {
    "szGreeting": "Selamat Siang<br/>Ibu Nia",
    "decCashSaldo": 1621000,
    "bHasOpenBilled": false,
    "intOpenBill": 0,
    "gdId": "9164d625-8ffb-44d5-93ee-bb8f529a861f",
    "intIndex": null,
    "bUpdated": null
  },
  "oResultType": "DashBoardData"
}
```
⚠️ Catatan implementasi Flutter: `szGreeting` mengandung tag HTML `<br/>` di tengah string — perlu di-render pakai widget yang mendukung HTML sederhana (mis. paket `flutter_html`), atau di-split manual berdasarkan `<br/>` untuk dipisah jadi dua `Text` widget. Endpoint ini **tidak** mengembalikan info/agenda — itu tetap dari `Info/GetAvailableInfo` & `Activity/GetNextActivities` terpisah, sesuai dugaan awal.

### ✅ Citizen/GetProfile — TERKONFIRMASI (`oResultType: "CitizenInfoData"`)
```json
{
  "bSuccess": true,
  "szMessage": "Success",
  "oResult": {
    "gdParentId": "c69fa399-274f-40de-a8d2-34016c0e0014",
    "szCardId": "3271024708840002",
    "szName": "Nia Kurnia Agustina",
    "szDescription": "02. Bendahara",
    "gdTittleId": "102641a9-bd77-4e57-9c89-0404f4ab901a",
    "dtmBirth": "2025-12-06T00:00:00",
    "gdReligionId": "512a0025-aba8-476b-8286-d31aa08e4f51",
    "szNickName": "Nia",
    "szPhoneNo": "087770322837",
    "szEmail": "bunnbun.antik2@gmsil.com",
    "dataStatus": { "...": "lihat pola DataStatus di bagian 1" },
    "gdId": "1eb5866b-da85-4aa2-87d8-2f072a164f22",
    "intIndex": null,
    "bUpdated": null
  },
  "oResultType": "CitizenInfoData"
}
```
Catatan: hanya mengembalikan `gdReligionId` (ID saja), bukan nama agamanya — kalau mau tampilkan nama agama di UI, harus lookup terpisah ke `Religion/GetList` lalu cocokkan by `gdId`. Sama untuk `gdTittleId` → lookup ke `Tittle/GetList`.

### ✅ Citizen/GetList — TERKONFIRMASI (`oResultType: "List\`1"`, mengembalikan 39 baris/rumah tangga)
Struktur satu item (semua 39 item mengikuti pola identik ini):
```json
{
  "szCardId": "3271021705220012",
  "gdCitizenInfoId": "89b01726-0dae-48eb-bec7-9b748036005d",
  "citizenInfo": {
    "gdParentId": "c69fa399-274f-40de-a8d2-34016c0e0014",
    "szCardId": "3271022101780003",
    "szName": "Aang Rangga Cipta",
    "szDescription": null,
    "gdTittleId": "27132598-e8bd-4bd8-b9dd-d9185d7b8a24",
    "dtmBirth": "2025-12-03T00:00:00",
    "gdReligionId": "512a0025-aba8-476b-8286-d31aa08e4f51",
    "szNickName": "Boank",
    "szPhoneNo": "087770322837",
    "szEmail": "mrboank60@yahoo.co.uk",
    "dataStatus": { "...": "..." },
    "gdId": "89b01726-0dae-48eb-bec7-9b748036005d",
    "intIndex": null,
    "bUpdated": null
  },
  "gdBillTemplateId": "42e0ef42-5cf3-47a3-8317-4faaa472d3e2",
  "dataStatus": { "...": "..." },
  "gdId": "c69fa399-274f-40de-a8d2-34016c0e0014",
  "intIndex": null,
  "bUpdated": null
}
```
Perhatikan: `Citizen.gdId` (`c69fa399-...`) = `CitizenInfo.gdParentId` di dalamnya — konfirmasi relasi dua arah antara KK dan kepala keluarga. `Citizen.szCardId` di level atas duplikat dari `citizenInfo.szCardId`.

### ✅ BillTemplate/GetList — TERKONFIRMASI (4 baris: Iuran Rutin 30/35/40/50)
```json
{
  "bSuccess": true,
  "szMessage": "return 4 rows.",
  "oResult": [
    {
      "szName": "Iuran Rutin 35",
      "szDescription": "Iuran Rutin 35",
      "bOccurence": true,
      "items": null,
      "dataStatus": { "...": "..." },
      "gdId": "78082bb5-6169-4ede-be46-3a2e7935221e",
      "intIndex": null,
      "bUpdated": null
    }
  ],
  "oResultType": "List`1"
}
```

### ✅ Billing/MyBill — TERKONFIRMASI (struktur nested lengkap)
```json
{
  "bSuccess": true,
  "szMessage": "return 1 rows.",
  "oResult": [
    {
      "billing": {
        "dtmDoc": "2026-02-01T00:00:00",
        "gdCitizenId": "c69fa399-274f-40de-a8d2-34016c0e0014",
        "gdCitizenInfoId": "89b01726-0dae-48eb-bec7-9b748036005d",
        "szDescription": "Iuran Rutin 50 a/n : Aang Rangga Cipta Periode : Februari 2026",
        "decAmount": 50000,
        "decRemain": 0,
        "intYear": 2026,
        "intMonth": 2,
        "bClosed": true,
        "dtmDue": "2026-02-15T00:00:00",
        "gdBillingTemplateId": "42e0ef42-5cf3-47a3-8317-4faaa472d3e2",
        "billTemplate": {
          "szName": "Iuran Rutin 50",
          "szDescription": "Iuran Rutin 50",
          "bOccurence": true,
          "items": [
            {
              "gdParentId": null,
              "szName": "Standard 50",
              "szDescription": "Standar 50",
              "decAmount": 50000,
              "dataStatus": { "...": "..." },
              "gdId": "2f543d99-5458-4d91-afc3-c0d93e0ccc74",
              "intIndex": null,
              "bUpdated": null
            }
          ],
          "dataStatus": { "...": "..." },
          "gdId": "42e0ef42-5cf3-47a3-8317-4faaa472d3e2",
          "intIndex": null,
          "bUpdated": null
        },
        "citizen": {
          "szCardId": "3271021705220012",
          "gdCitizenInfoId": "89b01726-0dae-48eb-bec7-9b748036005d",
          "citizenInfo": { "...": "struktur CitizenInfoData, lihat di atas" },
          "gdBillTemplateId": "42e0ef42-5cf3-47a3-8317-4faaa472d3e2",
          "dataStatus": { "...": "..." },
          "gdId": "c69fa399-274f-40de-a8d2-34016c0e0014",
          "intIndex": null,
          "bUpdated": null
        },
        "dataStatus": { "...": "..." },
        "gdId": "09f01da1-13d0-4975-aabd-8699e9a337b4",
        "intIndex": null,
        "bUpdated": null
      },
      "billingPayments": [
        {
          "gdParentId": "09f01da1-13d0-4975-aabd-8699e9a337b4",
          "dtmDoc": "2026-02-02T20:40:40.97",
          "decPayment": 50000,
          "gdUserPayedById": "1eb5866b-da85-4aa2-87d8-2f072a164f22",
          "szDescription": "2026/02",
          "dataStatus": { "...": "..." },
          "gdId": "fcb0e9ea-3d41-4cb3-800d-40db44ef63f4",
          "intIndex": null,
          "bUpdated": null
        }
      ],
      "gdId": "09f01da1-13d0-4975-aabd-8699e9a337b4",
      "intIndex": null,
      "bUpdated": null
    }
  ],
  "oResultType": "List`1"
}
```
Catatan: `szDescription` di `billing` sudah berupa kalimat siap-tampil ("Iuran Rutin 50 a/n : ... Periode : Februari 2026") — backend sudah menyiapkan teks ini, jadi Flutter tidak perlu menyusun ulang dari field lain. `decRemain: 0` dan `bClosed: true` menandakan tagihan ini sudah lunas — dua field ini kemungkinan yang dipakai untuk membedakan tab "Belum Lunas"/"Lunas" di UI Tagihan.

### Entity lain (masih dugaan, field spesifik belum dites)

**Activity/Create** (request, dugaan):
```json
{
  "szName": "Arisan Rutin",
  "szDescription": null,
  "dtmEventDate": "2026-06-06T16:00:00"
}
```

**Info/Create** (request, dugaan):
```json
{
  "szName": "Info Listrik",
  "szDescription": "Informasi pemadaman listrik tanggal 24 Januari 2026 dari pukul 14.00 s.d. 16.00"
}
```

**CashInOut** — item dari GetList (dugaan):
```json
{
  "gdId": "e1f20001-...",
  "decAmount": 200000,
  "szType": "OUT",
  "szDescription": "Jenguk Pak Haji Dedi Melati 4",
  "dtmTransactionDate": "2026-08-15T00:00:00"
}
```

**Billing/ProcessBilling** (request, dugaan — sekarang pakai nama field yang benar `gdBillingTemplateId` sesuai temuan di atas):
```json
{
  "gdBillingTemplateId": "42e0ef42-5cf3-47a3-8317-4faaa472d3e2",
  "dtmProcessDate": "2026-09-01T00:00:00",
  "dtmDueDate": "2026-09-10T00:00:00",
  "szTargetType": "ALL",
  "gdCitizenIds": []
}
```

---

## 7. Model Dart (Freezed) per Entity

Setup dependency di `pubspec.yaml`:
```yaml
dependencies:
  freezed_annotation: ^2.4.1
  json_annotation: ^4.9.0

dev_dependencies:
  build_runner: ^2.4.9
  freezed: ^2.5.2
  json_serializable: ^6.8.0
```

### ✅ ApiResultData — envelope generic, field sudah terkonfirmasi
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result_data.freezed.dart';
part 'api_result_data.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResultData<T> with _$ApiResultData<T> {
  const factory ApiResultData({
    @JsonKey(name: 'bSuccess') required bool success,
    @JsonKey(name: 'szMessage') String? message,
    @JsonKey(name: 'oResult') T? result,
    @JsonKey(name: 'oResultType') String? resultType,
  }) = _ApiResultData<T>;

  factory ApiResultData.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ApiResultDataFromJson(json, fromJsonT);
}
```

### ✅ DataStatus — pola audit trail, terkonfirmasi
```dart
@freezed
class DataStatus with _$DataStatus {
  const factory DataStatus({
    String? gdUserCreatedId,
    String? szUserCreatedNm,
    String? gdUserUpdatedId,
    String? szUserUpdatedNm,
    DateTime? dtmCreated,
    DateTime? dtmLastUpdated,
    @Default(false) bool bInActive,
  }) = _DataStatus;

  factory DataStatus.fromJson(Map<String, dynamic> json) => _$DataStatusFromJson(json);
}
```

### ✅ UserAccountData — terkonfirmasi dari response login
```dart
@freezed
class UserAccountData with _$UserAccountData {
  const factory UserAccountData({
    String? gdId,
    required String szName,
    String? szDescription,
    String? szEmail,
    String? szPassword, // hash — JANGAN pernah dikirim balik ke backend dari form edit biasa
    bool? bMustChangePassword,
    String? szNik,
    @Default(false) bool bOfficer,
    @Default(false) bool bFinance,
    String? szLangId,
    String? szWelcomePage,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _UserAccountData;

  factory UserAccountData.fromJson(Map<String, dynamic> json) => _$UserAccountDataFromJson(json);
}
```

### ✅ LoginResponseData — terkonfirmasi
```dart
@freezed
class LoginResponseData with _$LoginResponseData {
  const factory LoginResponseData({
    required UserAccountData user,
    String? szWelcomePage,
    required String token,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);
}
```

### ✅ DashBoardData — terkonfirmasi
```dart
@freezed
class DashBoardData with _$DashBoardData {
  const factory DashBoardData({
    required String szGreeting, // ⚠️ mengandung tag HTML <br/>, perlu ditangani saat render
    required double decCashSaldo,
    @Default(false) bool bHasOpenBilled,
    @Default(0) int intOpenBill,
    String? gdId,
    int? intIndex,
    bool? bUpdated,
  }) = _DashBoardData;

  factory DashBoardData.fromJson(Map<String, dynamic> json) => _$DashBoardDataFromJson(json);
}
```

### ✅ CitizenInfoData — terkonfirmasi (data personal individu)
```dart
@freezed
class CitizenInfoData with _$CitizenInfoData {
  const factory CitizenInfoData({
    String? gdId,
    String? gdParentId, // FK ke Citizen (KK)
    required String szCardId, // NIK individu
    required String szName,
    String? szDescription, // jabatan RT kalau ada, mis. "02. Bendahara"
    String? gdTittleId, // ejaan sengaja double-T, ikut nama controller
    DateTime? dtmBirth,
    String? gdReligionId,
    String? szNickName,
    String? szPhoneNo,
    String? szEmail,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _CitizenInfoData;

  factory CitizenInfoData.fromJson(Map<String, dynamic> json) => _$CitizenInfoDataFromJson(json);
}
```

### ✅ CitizenData — terkonfirmasi (data per Kartu Keluarga)
```dart
@freezed
class CitizenData with _$CitizenData {
  const factory CitizenData({
    String? gdId,
    required String szCardId, // No. KK, duplikat dari citizenInfo.szCardId kepala keluarga
    String? gdCitizenInfoId, // FK ke CitizenInfoData kepala keluarga
    CitizenInfoData? citizenInfo,
    String? gdBillTemplateId, // ⚠️ beda nama dengan BillingData.gdBillingTemplateId!
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _CitizenData;

  factory CitizenData.fromJson(Map<String, dynamic> json) => _$CitizenDataFromJson(json);
}
```

### ✅ BillTemplateItemData & BillTemplateData — terkonfirmasi
```dart
@freezed
class BillTemplateItemData with _$BillTemplateItemData {
  const factory BillTemplateItemData({
    String? gdId,
    String? gdParentId,
    required String szName,
    String? szDescription,
    required double decAmount,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _BillTemplateItemData;

  factory BillTemplateItemData.fromJson(Map<String, dynamic> json) => _$BillTemplateItemDataFromJson(json);
}

@freezed
class BillTemplateData with _$BillTemplateData {
  const factory BillTemplateData({
    String? gdId,
    required String szName,
    String? szDescription,
    @Default(true) bool bOccurence, // BUKAN bIsRecurring
    List<BillTemplateItemData>? items, // null di GetList biasa, terisi saat di-nest via Billing/MyBill
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _BillTemplateData;

  factory BillTemplateData.fromJson(Map<String, dynamic> json) => _$BillTemplateDataFromJson(json);
}
```

### ✅ BillingData, BillingPaymentData & MyBillItemData — terkonfirmasi (struktur nested dari `Billing/MyBill`)
```dart
@freezed
class BillingData with _$BillingData {
  const factory BillingData({
    String? gdId,
    DateTime? dtmDoc,
    String? gdCitizenId,
    String? gdCitizenInfoId,
    required String szDescription, // sudah kalimat siap-tampil dari backend
    required double decAmount,
    @Default(0) double decRemain,
    int? intYear,
    int? intMonth,
    @Default(false) bool bClosed, // true = lunas
    DateTime? dtmDue,
    String? gdBillingTemplateId, // ⚠️ beda nama dengan CitizenData.gdBillTemplateId!
    BillTemplateData? billTemplate,
    CitizenData? citizen,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _BillingData;

  factory BillingData.fromJson(Map<String, dynamic> json) => _$BillingDataFromJson(json);
}

@freezed
class BillingPaymentData with _$BillingPaymentData {
  const factory BillingPaymentData({
    String? gdId,
    String? gdParentId, // FK ke BillingData
    DateTime? dtmDoc,
    required double decPayment,
    String? gdUserPayedById,
    String? szDescription,
    DataStatus? dataStatus,
    int? intIndex,
    bool? bUpdated,
  }) = _BillingPaymentData;

  factory BillingPaymentData.fromJson(Map<String, dynamic> json) => _$BillingPaymentDataFromJson(json);
}

/// Composite DTO khusus dipakai oleh Billing/MyBill — satu tagihan + histori pembayarannya
@freezed
class MyBillItemData with _$MyBillItemData {
  const factory MyBillItemData({
    required BillingData billing,
    @Default([]) List<BillingPaymentData> billingPayments,
    String? gdId,
    int? intIndex,
    bool? bUpdated,
  }) = _MyBillItemData;

  factory MyBillItemData.fromJson(Map<String, dynamic> json) => _$MyBillItemDataFromJson(json);
}
```

### Entity lain (belum sempat dites — field masih dugaan, konvensi penamaan sudah mengikuti pola terkonfirmasi)

```dart
@freezed
class Activity with _$Activity {
  const factory Activity({
    String? gdId,
    required String szName,
    String? szDescription,
    required DateTime dtmEventDate,
    int? intIndex,
    bool? bUpdated,
    DataStatus? dataStatus,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}

@freezed
class CashInOut with _$CashInOut {
  const factory CashInOut({
    String? gdId,
    required double decAmount,
    required String szType, // "IN" atau "OUT"
    required String szDescription,
    DateTime? dtmTransactionDate,
    DataStatus? dataStatus,
  }) = _CashInOut;

  factory CashInOut.fromJson(Map<String, dynamic> json) => _$CashInOutFromJson(json);
}

@freezed
class InfoItem with _$InfoItem {
  const factory InfoItem({
    String? gdId,
    required String szName,
    String? szDescription,
    String? szImageUrl,
    DataStatus? dataStatus,
  }) = _InfoItem;

  factory InfoItem.fromJson(Map<String, dynamic> json) => _$InfoItemFromJson(json);
}

@freezed
class Religion with _$Religion {
  const factory Religion({
    String? gdId,
    required String szName,
    DataStatus? dataStatus,
  }) = _Religion;

  factory Religion.fromJson(Map<String, dynamic> json) => _$ReligionFromJson(json);
}
```
> `Tittle`, `Chat`, dan `FCM` (message/token) mengikuti pola struktur yang sama seperti contoh di atas — cukup ganti nama class dan field sesuai kebutuhan setelah field asli dikonfirmasi.

### Request khusus: `GridRequestData` & `BillingProcessData`
```dart
@freezed
class GridRequestData with _$GridRequestData {
  const factory GridRequestData({
    @Default(1) int intPage,
    @Default(10) int intPageSize,
    String? szSearchTerm,
  }) = _GridRequestData;

  factory GridRequestData.fromJson(Map<String, dynamic> json) => _$GridRequestDataFromJson(json);
}

@freezed
class BillingProcessData with _$BillingProcessData {
  const factory BillingProcessData({
    required String gdBillTemplateId,
    required DateTime dtmProcessDate,
    required DateTime dtmDueDate,
    @Default('ALL') String szTargetType,
    @Default([]) List<String> gdCitizenIds,
  }) = _BillingProcessData;

  factory BillingProcessData.fromJson(Map<String, dynamic> json) => _$BillingProcessDataFromJson(json);
}
```

Jalankan code generator setelah membuat/mengubah model:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## 8. Error Handling

### ✅ Pola error terkonfirmasi
Backend mengembalikan **status HTTP 200** bahkan untuk error bisnis (NIK tidak terdaftar, password salah, dll) — errornya ditandai lewat `bSuccess: false` + `szMessage` berisi pesan yang sudah siap ditampilkan ke user (dalam Bahasa Indonesia, jadi bisa langsung dipakai di UI tanpa mapping tambahan).

### Tabel Kode Status HTTP
| Kode | Arti | Penanganan di Flutter |
|---|---|---|
| 200 | OK — **selalu cek `bSuccess`**, karena error bisnis (NIK salah, password salah, data tidak ditemukan) tetap dikembalikan dengan status 200 | Kalau `bSuccess: false`, tampilkan `szMessage` langsung ke user |
| 400 | Bad Request — kemungkinan validasi model gagal di level framework (sebelum masuk logic controller) | Tampilkan pesan per field dari `errors` (pola `ValidationProblemDetails`, jika dipakai) |
| 401 | Unauthorized — token tidak ada/kadaluarsa/tidak valid | Redirect ke halaman login, hapus token tersimpan |
| 403 | Forbidden — role tidak cukup (mis. warga biasa akses endpoint Admin, atau bukan `bOfficer`/`bFinance`) | Tampilkan pesan "Anda tidak punya akses" |
| 404 | Not Found — route tidak ditemukan | Tampilkan empty state |
| 500 | Internal Server Error | Tampilkan pesan generic + tombol retry |
| — (Dio: connection timeout/error) | Tidak ada koneksi / server tidak merespons | Tampilkan "Tidak ada koneksi internet", tombol "Muat Ulang" |

### Custom Exception Classes
```dart
class ApiException implements Exception {
  final String message;
  final int? statusCode;
  ApiException(this.message, {this.statusCode});

  @override
  String toString() => 'ApiException($statusCode): $message';
}

class UnauthorizedException extends ApiException {
  UnauthorizedException(String message) : super(message, statusCode: 401);
}

class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}
```

### Dio Interceptor — sudah diupdate pakai field yang terkonfirmasi
```dart
dio.interceptors.add(InterceptorsWrapper(
  onError: (DioException e, handler) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.connectionError) {
      return handler.reject(DioException(
        requestOptions: e.requestOptions,
        error: NetworkException('Tidak dapat terhubung ke server. Cek koneksi internet.'),
      ));
    }

    final statusCode = e.response?.statusCode;
    final data = e.response?.data;

    if (statusCode == 401) {
      // TODO: trigger logout / hapus token tersimpan / arahkan ke layar login
      return handler.reject(DioException(
        requestOptions: e.requestOptions,
        error: UnauthorizedException('Sesi berakhir, silakan login ulang.'),
      ));
    }

    String message = 'Terjadi kesalahan pada server.';
    if (data is Map<String, dynamic>) {
      if (data['szMessage'] != null && (data['szMessage'] as String).isNotEmpty) {
        message = data['szMessage'];
      } else if (data['title'] != null) {
        message = data['title']; // fallback andai ada endpoint yang pakai ValidationProblemDetails standar
      }
    }

    return handler.reject(DioException(
      requestOptions: e.requestOptions,
      error: ApiException(message, statusCode: statusCode),
    ));
  },
));
```

### Menangani error bisnis saat status tetap 200 (`bSuccess: false`) — sekarang sudah pasti polanya
```dart
T unwrap<T>(Response res, T Function(dynamic) fromJson) {
  final body = res.data;
  if (body is Map && body['bSuccess'] == true) {
    return fromJson(body['oResult']);
  }
  throw ApiException(
    body is Map && (body['szMessage'] as String?)?.isNotEmpty == true
        ? body['szMessage']
        : 'Permintaan gagal.',
  );
}
```

### Contoh pemakaian di layer UI (Riverpod)
```dart
try {
  final loginResult = await authRepo.login(nik, password);
  // simpan token, arahkan ke szWelcomePage
} on ApiException catch (e) {
  // e.message sudah siap ditampilkan langsung, mis:
  // "Nomor Induk Keluarga (NIK) tidak terdaftar."
  // "Kata sandi yang anda masukan salah. Mohon untuk memasukan kata sandi yang benar."
  showErrorSnackbar(e.message);
} on NetworkException catch (e) {
  showErrorSnackbar(e.message);
}
```

---

## 9. Contoh cURL per Endpoint

Variabel yang dipakai di semua contoh:
```bash
BASE_URL="https://dev.buatapaaja.com/wargart04dev"
TOKEN="<isi_dengan_token_hasil_login>"
ID="00000000-0000-0000-0000-000000000000"   # ganti dengan gdId asli
```

### Auth
```bash
curl -X POST "$BASE_URL/Auth/Login" -H "Content-Type: application/json" -d '{"szNik":"3271024708840002","szPassword":"rahasia123"}'
curl -X GET "$BASE_URL/Auth/Ping" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Auth/ChangePassword" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szOldPassword":"lama123","szNewPassword":"baru123"}'
curl -X POST "$BASE_URL/Auth/CreateDummyData" -H "Authorization: Bearer $TOKEN"
```

### DashBoard (perlu Authorization — lihat catatan bagian 6)
```bash
curl -X GET "$BASE_URL/DashBoard/Get" -H "Authorization: Bearer $TOKEN"
```

### Citizen
```bash
curl -X GET "$BASE_URL/Citizen/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Citizen/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Citizen/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Citizen/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szName":"Contoh Warga"}'
curl -X PUT "$BASE_URL/Citizen/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","szName":"Contoh Warga Update"}'
curl -X DELETE "$BASE_URL/Citizen/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Citizen/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/Citizen/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
curl -X GET "$BASE_URL/Citizen/GetProfile" -H "Authorization: Bearer $TOKEN"
curl -X PUT "$BASE_URL/Citizen/UpdateCitizenInfo" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdParentId":"'"$ID"'","szName":"Anggota Keluarga"}'
curl -X POST "$BASE_URL/Citizen/CreateCitizenInfo" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdParentId":"'"$ID"'","szName":"Anggota Keluarga Baru"}'
curl -X GET "$BASE_URL/Citizen/GetCitizenInfoList?gdParentId=$ID" -H "Authorization: Bearer $TOKEN"
```

### Billing
```bash
curl -X GET "$BASE_URL/Billing/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Billing/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Billing/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Billing/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"decAmount":35000}'
curl -X PUT "$BASE_URL/Billing/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","decAmount":35000}'
curl -X DELETE "$BASE_URL/Billing/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Billing/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/Billing/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
curl -X POST "$BASE_URL/Billing/ProcessBilling" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdBillTemplateId":"'"$ID"'","dtmProcessDate":"2026-09-01T00:00:00","dtmDueDate":"2026-09-10T00:00:00","szTargetType":"ALL"}'
curl -X GET "$BASE_URL/Billing/MyBill" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Billing/GetBilliingPaymentSummary" -H "Authorization: Bearer $TOKEN"
```

### BillingPayment
```bash
curl -X GET "$BASE_URL/BillingPayment/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/BillingPayment/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/BillingPayment/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/BillingPayment/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdBillingId":"'"$ID"'","decAmount":35000}'
curl -X PUT "$BASE_URL/BillingPayment/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","decAmount":35000}'
curl -X DELETE "$BASE_URL/BillingPayment/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/BillingPayment/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/BillingPayment/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
```

### BillTemplate
```bash
curl -X GET "$BASE_URL/BillTemplate/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/BillTemplate/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/BillTemplate/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/BillTemplate/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szName":"Iuran Rutin 35","bIsRecurring":true,"szDescription":"Iuran Rutin 35"}'
curl -X PUT "$BASE_URL/BillTemplate/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","szName":"Iuran Rutin 35"}'
curl -X DELETE "$BASE_URL/BillTemplate/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/BillTemplate/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/BillTemplate/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
```

### CashInOut
```bash
curl -X GET "$BASE_URL/CashInOut/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/CashInOut/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/CashInOut/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/CashInOut/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"decAmount":200000,"szType":"OUT","szDescription":"Jenguk Pak Haji"}'
curl -X PUT "$BASE_URL/CashInOut/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","decAmount":200000,"szType":"OUT"}'
curl -X DELETE "$BASE_URL/CashInOut/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/CashInOut/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/CashInOut/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
curl -X GET "$BASE_URL/CashInOut/ViewCashInOut?PeriodType=monthly" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/CashInOut/DownloadViewCashInOut?PeriodType=monthly" -H "Authorization: Bearer $TOKEN" --output kas-report.xlsx
```

### Chat
```bash
curl -X GET "$BASE_URL/Chat/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Chat/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Chat/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Chat/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szMessage":"Halo"}'
curl -X PUT "$BASE_URL/Chat/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","szMessage":"Halo (edit)"}'
curl -X DELETE "$BASE_URL/Chat/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Chat/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/Chat/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
curl -X POST "$BASE_URL/Chat/Send" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdConversationId":"'"$ID"'","szMessage":"Halo warga!"}'
curl -X GET "$BASE_URL/Chat/ChatHistories?gdConversationId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Chat/GetUnreadChats" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Chat/MarkAsRead?gdConversationId=$ID" -H "Authorization: Bearer $TOKEN"
```

### Info
```bash
curl -X GET "$BASE_URL/Info/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Info/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Info/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Info/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szName":"Info Listrik","szDescription":"Pemadaman listrik"}'
curl -X PUT "$BASE_URL/Info/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","szName":"Info Listrik"}'
curl -X DELETE "$BASE_URL/Info/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Info/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/Info/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
curl -X GET "$BASE_URL/Info/GetAvailableInfo" -H "Authorization: Bearer $TOKEN"
```

### Activity
```bash
curl -X GET "$BASE_URL/Activity/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Activity/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Activity/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Activity/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szName":"Arisan Rutin","dtmEventDate":"2026-06-06T16:00:00"}'
curl -X PUT "$BASE_URL/Activity/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","szName":"Arisan Rutin"}'
curl -X DELETE "$BASE_URL/Activity/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Activity/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/Activity/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
curl -X GET "$BASE_URL/Activity/GetNextActivities" -H "Authorization: Bearer $TOKEN"
```

### Religion & Tittle
```bash
curl -X GET "$BASE_URL/Religion/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Religion/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Religion/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Religion/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szName":"Islam"}'
curl -X PUT "$BASE_URL/Religion/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","szName":"Islam"}'
curl -X DELETE "$BASE_URL/Religion/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Religion/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/Religion/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'

curl -X GET "$BASE_URL/Tittle/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Tittle/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/Tittle/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Tittle/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szName":"Ibu"}'
curl -X PUT "$BASE_URL/Tittle/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","szName":"Ibu"}'
curl -X DELETE "$BASE_URL/Tittle/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/Tittle/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/Tittle/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
```

### User
```bash
curl -X GET "$BASE_URL/User/GetList" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/User/Get?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X GET "$BASE_URL/User/IsExist?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/User/Create" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szName":"User Baru","bOfficer":false,"bFinance":false}'
curl -X PUT "$BASE_URL/User/Update" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"gdId":"'"$ID"'","bOfficer":true}'
curl -X DELETE "$BASE_URL/User/Delete?gdId=$ID" -H "Authorization: Bearer $TOKEN"
curl -X POST "$BASE_URL/User/FetchData" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"intPage":1,"intPageSize":10}'
curl -X POST "$BASE_URL/User/FetchDataUsingDataSource" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{}'
```

### Upload
```bash
curl -X POST "$BASE_URL/Upload/Save" -H "Authorization: Bearer $TOKEN" -F "files=@/path/to/foto.jpg" -F "uploadType=profile" -F "newFileName=foto-profil.jpg"
curl -X POST "$BASE_URL/Upload/Remove" -H "Authorization: Bearer $TOKEN" --data-urlencode "files=foto-profil.jpg"
curl -X GET "$BASE_URL/Upload/GetImage?szUploadFileType=profile&imageName=foto-profil.jpg&ts=1700000000" -H "Authorization: Bearer $TOKEN" --output foto.jpg
curl -X GET "$BASE_URL/Upload/GetFile?uploadType=document&fileName=contoh.pdf" -H "Authorization: Bearer $TOKEN" --output contoh.pdf
```

### FCM
```bash
curl -X POST "$BASE_URL/FCM/SendMessage" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szTitle":"Tagihan Baru","szBody":"Ada tagihan baru untuk Anda"}'
curl -X POST "$BASE_URL/FCM/RegisterFCMToken" -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json" -d '{"szFcmToken":"<token_device>"}'
```

### ApkUpdate
```bash
curl -X GET "$BASE_URL/ApkUpdate/CheckVersion?szCurrentVersion=1.0.0&szApiUrl=$BASE_URL"
curl -X GET "$BASE_URL/ApkUpdate/DownloadApk" --output wargart04-latest.apk
```

---

## 10. Changelog Dokumen
- **v0.1** — Dokumentasi awal, disusun dari hasil fetch OpenAPI spec. Field-level schema (`components/schemas`) belum lengkap; endpoint list sudah lengkap untuk seluruh controller yang terdaftar.
- **v0.2** — Menambahkan: contoh request/response JSON per endpoint (berlabel asumsi), model Dart `freezed` per entity, bagian error handling, dan contoh cURL untuk seluruh endpoint.
- **v0.3** — ✅ **Update besar berdasarkan hasil test asli ke `Auth/Login`.** Konvensi penamaan (Hungarian notation: `sz`/`b`/`gd`/`dtm`/`int`) dan envelope response (`bSuccess`/`szMessage`/`oResult`/`oResultType`) sekarang terkonfirmasi, bukan lagi dugaan. Model `ApiResultData`, `UserAccountData`, `LoginResponseData`, dan `DataStatus` sudah dibuat berdasarkan struktur asli. Seluruh contoh JSON, model Dart, dan cURL untuk entity lain diupdate mengikuti konvensi yang terkonfirmasi (field spesifiknya sendiri masih dugaan sampai dites satu-satu). Dicatat juga: `DashBoard/Get`, `Citizen/GetProfile`, `Billing/MyBill` mengembalikan body kosong saat ditest — kemungkinan perlu header `Authorization: Bearer` yang belum disertakan.
- **v0.4** — ✅ **Terkonfirmasi penuh: `DashBoard/Get`, `Citizen/GetProfile`, `Billing/MyBill`, `Citizen/GetList`, `BillTemplate/GetList`** (ternyata cukup ditambah header Authorization). Temuan struktur data besar: `Citizen` (per KK) dan `CitizenInfo` (per individu) adalah entity terpisah yang berelasi lewat `gdParentId`/`gdCitizenInfoId`; NIK bernama `szCardId` di entity Citizen/CitizenInfo (beda dengan `szNik` di entity User); field gelar konsisten `gdTittleId` (double-T); `BillTemplate` tidak punya nominal langsung, nominalnya ada di `items[]`; ditemukan inkonsistensi penamaan `gdBillTemplateId` (di Citizen) vs `gdBillingTemplateId` (di Billing). Model Dart `DashBoardData`, `CitizenInfoData`, `CitizenData`, `BillTemplateData`, `BillTemplateItemData`, `BillingData`, `BillingPaymentData`, dan `MyBillItemData` (composite dari `Billing/MyBill`) ditambahkan berdasarkan struktur asli.

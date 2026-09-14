# WargaRT04

A mobile dashboard for RT 04/05 residents: cash ledger, dues, resident
agenda, and resident info. The vocabulary below is what the Flutter code,
the UI copy, and the API documentation all share — sourced from the
confirmed backend responses in `docs/wargart04-api-documentation.md`.

## People & household

**Citizen**:
One row per Kartu Keluarga (household). Holds `szCardId` (the household's
card number), a reference to the head of household's `CitizenInfo` via
`gdCitizenInfoId`, and `gdBillTemplateId` (which dues rate applies to this
household). Never holds a name, phone, or email directly.
_Avoid_: Warga on its own (ambiguous — could mean Citizen or CitizenInfo),
Household with no further qualifier

**CitizenInfo**:
One row per individual — head of household or family member. Holds
`szCardId` (that person's own NIK — the same value as the household's for
the head of household, but a distinct field), `szName`, `szNickName`,
`dtmBirth`, `gdReligionId`, `gdTittleId`, `szPhoneNo`, `szEmail`, and
`gdParentId` pointing back to its `Citizen`.
_Avoid_: Individual warga, Person, Member

**Anggota Keluarga**:
The UI's name for the list of every `CitizenInfo` under one `Citizen`
(`Citizen/GetCitizenInfoList?gdParentId=`). Not a separate model in code —
still a list of `CitizenInfoData`.

**Petugas RT**:
A `User` with `bOfficer: true`. Gets the Admin tab. `bFinance: true` is a
separate flag on the same entity, gating Kas RT specifically — an officer is
not automatically finance, and vice versa.
_Avoid_: Admin (the UI already uses this word for the tab itself — don't
reuse it for the person), Pengurus

## Money

**BillTemplate**:
The master dues rate (e.g. "Iuran Rutin 35"). `bOccurence` marks a recurring
template. It has no amount field of its own — the amount lives on its
`items` (`BillTemplateItemData`), which is `null` on a plain `GetList` and
only populated when nested inside `Billing/MyBill`.
_Avoid_: Rate, Tariff, Fee

**Billing**:
One concrete bill for one `Citizen` for one period (`intYear` + `intMonth`).
`bClosed: true` alongside `decRemain: 0` means paid. `szDescription` arrives
pre-formatted from the backend (e.g. "Iuran Rutin 50 a/n : ... Periode :
...") — don't reassemble it from other fields.
_Avoid_: Invoice — the UI and the API both say "Tagihan"

**BillingPayment**:
One payment record against a `Billing` (linked by `gdParentId`). A `Billing`
can have more than one, e.g. partial payments.
_Avoid_: Payment, Transaction

**Kas RT / CashInOut**:
RT cash ledger entries (in/out) — a separate concept from `Billing`, not a
payment against a bill.

## Resident content

**Info**:
An announcement shown in the home carousel via `Info/GetAvailableInfo`.

**Activity**:
An event shown under "Upcoming Event(s)" via `Activity/GetNextActivities`.
The UI calls this "Agenda Warga".

## Ground truth

**DataStatus**:
The audit-trail sub-object (`gdUserCreatedId`, `dtmCreated`,
`dtmLastUpdated`, `bInActive`, etc.) that rides along on most entities.
Don't assume it's present everywhere without checking — `DashBoard/Get`, for
one, doesn't have it.

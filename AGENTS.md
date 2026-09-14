# Working in this repository

Instructions for any coding agent working here, whichever tool it runs in.
`CLAUDE.md` and `GEMINI.md` point at this file, so there is one copy to keep
true rather than several that drift.

This repository is the **Flutter frontend only** for the WargaRT04 app — a
mobile dashboard for RT 04/05 residents (cash ledger, dues, resident agenda,
resident info). The backend (ASP.NET Core + SQL Server) lives in a separate
repository owned by the backend developer. It is out of scope here entirely.

## Hard rules

1. **Never push to `main`.** Every change goes through a pull request.
2. **Branch as `<module>/<slug>`**, from an up-to-date `main`: `auth/`,
   `dashboard/`, `admin/`, `tagihan/`. One branch per finished screen or
   feature, not per whole module — merge as soon as a piece works, not when
   the module is fully done.
3. **`git merge main`, never `git rebase`**, and never force-push. The
   history comes out untidier and nobody can erase work that hasn't been
   pushed yet.
4. **Never touch the backend.** If a fix seems to need a backend change — a
   missing field, a wrong response shape, an endpoint that doesn't exist yet
   — don't attempt it. Flag it to the backend developer and note the gap in
   `docs/wargart04-api-documentation.md` instead of guessing around it in the
   Flutter code.
5. **Be green before opening the pull request**:
   - `flutter analyze` — no new warnings introduced
   - `flutter test`
   - If any `@freezed` / `@JsonSerializable` model changed, run
     `dart run build_runner build --delete-conflicting-outputs` and commit
     the regenerated `.freezed.dart` / `.g.dart` files alongside it

## Never invent an API field

Every field a model reads or sends must trace to a response actually observed
from the backend and recorded in
[`docs/wargart04-api-documentation.md`](docs/wargart04-api-documentation.md).
A field name that merely looks plausible — `szPhoneNumber` instead of the
real `szPhoneNo`, `bIsRecurring` instead of the real `bOccurence` — is worse
than admitting the field is unconfirmed, because it fails silently or throws
in front of real residents' data instead of failing a code review.

If a screen needs a field that hasn't been confirmed yet:
1. Test the endpoint directly against the dev API (Scalar UI at
   `https://dev.buatapaaja.com/wargart04dev/scalar/`, with a Bearer token)
2. Record the real response in `docs/wargart04-api-documentation.md`
3. Only then model it in Dart

Naming traps already found — check these before assuming a field name:
- NIK is `szNik` on `User` but `szCardId` on `Citizen` / `CitizenInfo`
- the dues-template reference is `gdBillTemplateId` on `Citizen` but
  `gdBillingTemplateId` on `Billing`
- title/gelar is `gdTittleId` (double T) everywhere, matching the `Tittle`
  controller name — this is not a typo to "fix"
- `Citizen` (one row per household) and `CitizenInfo` (one row per person)
  are two related entities, not one flat model — see `CONTEXT.md`

## UI work

Guardrails so far, to be extended as more screens get built. Move this list
into its own `docs/design-guardrails.md` once it earns one:

- **Contrast**: body text on the dark background must be readable at a
  glance, not the faint grey-on-black of the old admin-panel screens this
  project is replacing.
- **Spacing**: stick to the 4/8/16/24px scale — no ad hoc values.
- **Empty states**: never a bare "No records available." — a short, friendly
  line plus an icon or illustration matching what the screen is missing.
- **Loading states**: a skeleton, not a bare spinner, on list screens.
- **Status**: a `StatusBadge`-style component for Lunas/Belum Lunas and
  similar states — not plain text.
- Reuse one generic CRUD list+form pattern across the six Admin modules
  (Template Tagihan, Warga, Buat Info, Agenda Warga, Kas RT, User) instead of
  rebuilding the same list/search/pagination/form shape six times.

If a change breaks one of these on purpose, say so in the pull request
description with the reason — don't break it silently.

## Vocabulary

[`CONTEXT.md`](CONTEXT.md) is the glossary the code, the UI copy, and the API
docs all share — `Citizen` vs `CitizenInfo`, what `bOccurence` means, which
role flag gates the Admin tab. Use its words in identifiers and in anything a
resident reads. If a term you need is missing, add it there rather than
inventing one locally.

## Source of truth for the API

[`docs/wargart04-api-documentation.md`](docs/wargart04-api-documentation.md)
is the running record of every endpoint tested so far, its confirmed
response shape, and known naming inconsistencies. Keep it updated whenever a
new endpoint gets verified — it's what stops the next person, human or agent,
from re-guessing a field that's already been confirmed once.

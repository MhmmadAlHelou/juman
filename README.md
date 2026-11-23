<h1 align="center">Juman</h1>

<p align="center">
  A Flutter property-rental app for Arabic-speaking users — browse on a map, reserve, and host your own properties.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/State-Cubit%20(flutter__bloc)-6B1D1D" alt="Cubit" />
  <img src="https://img.shields.io/badge/Status-In%20development-orange" alt="Status" />
</p>

---

## Overview

**Juman** (formerly *Ewan*) is a mobile platform for renting and hosting properties, designed for the Syrian market. Guests can discover properties on a map, check availability, reserve and pay, while hosts can list and manage their own properties from the same app.

The app talks to a Django REST Framework backend and is built with a clean, feature-based architecture.

## Screenshots

<table>
  <tr>
    <td align="center"><img src="https://github.com/user-attachments/assets/48de3475-f4a3-4716-8e38-84dffd68d0f7" width="200" alt="Home" /><br /><sub><b>Home</b><br />Map search with price markers</sub></td>
    <td align="center"><img src="docs/screenshots/property_details.jpg" width="200" alt="Property details" /><br /><sub><b>Property details</b><br />Gallery, specs and reserve bar</sub></td>
    <td align="center"><img src="docs/screenshots/favourites.jpg" width="200" alt="Favorites" /><br /><sub><b>Favorites</b><br />Saved properties</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="docs/screenshots/my_reservations.jpg" width="200" alt="My reservations" /><br /><sub><b>My reservations</b><br />Approved / Pending / Rejected</sub></td>
    <td align="center"><img src="docs/screenshots/profile.jpg" width="200" alt="Profile" /><br /><sub><b>Profile</b><br />Account, hosting and settings</sub></td>
    <td></td>
  </tr>
</table>


## Features

**Guest**
- Map-based property search with price markers (Google Maps)
- Property details with image gallery, capacity, and minimum/maximum stay
- Date selection with unavailable dates blocked in the calendar
- Reservation checkout with payment-method selection and receipt upload
- Reservation hold timer while payment is pending
- My Reservations with Approved / Pending / Rejected tabs
- Favorites — cached locally for guests, synced to the account after login
- Identity verification (passport, selfie, family book) with review status

**Host**
- Multi-step *Add Property* wizard (basic info → location → details & amenities → images → pricing & documents)
- Draft support — resume an unfinished listing at any time
- My Properties with All / Draft / Pending / Approved / Rejected filters
- Owner-defined blocked dates

**General**
- Authentication with OTP verification and password reset
- Arabic and English localization with RTL support
- Profile and personal-information management

## Tech Stack

| Area | Packages |
|---|---|
| State management | `flutter_bloc` (Cubit), `equatable`, `freezed` |
| Navigation | `auto_route` |
| Networking | `dio` |
| Dependency injection | `get_it` |
| Localization | `easy_localization` |
| Maps & location | `google_maps_flutter` |
| Calendar | `table_calendar` |
| Media & files | `image_picker`, `file_picker` |

## Architecture

The project follows clean architecture, organized by feature:

```
lib/
├── core/            # DI, networking (DioClient), errors, theme (Palette), shared widgets
└── features/
    ├── auth/
    ├── home/
    ├── add_property/
    ├── reservation/
    ├── favorites/
    └── profile/
        ├── bloc/            # Cubits and states
        ├── data/            # Models, repositories (interface + implementation)
        └── presentation/    # Screens and widgets
```

Key conventions:
- **Repository pattern** — abstract interface plus implementation, registered through GetIt.
- **Cubits as factories** — registered with `registerFactory` to avoid stale state after logout/login.
- **Typed error handling** — `DioException` is wrapped in a `BackendException`; repositories throw and cubits catch.
- **Separation of concerns** — validation lives in state, UI controllers stay out of Cubits, and purely local UI state uses `StatefulWidget`.
- **Screens** are suffixed with `Screen` so `auto_route` generates matching `Route` names.

## Roadmap

- [ ] Personal information screen with profile editing
- [ ] Host reservations and payout status
- [ ] Invoices
- [ ] Final localization pass across all screens
- [ ] Map marker refresh after adding a property

## Author

**Mhmmad Al Helou** — Flutter Developer
[GitHub](https://github.com/MhmmadAlHelou) · [LinkedIn](https://www.linkedin.com/in/MhmmadAlHelou)

---

<p align="center"><sub>Juman is under active development.</sub></p>

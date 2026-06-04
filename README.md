# Recipe App

Aplikasi resep berbasis Flutter untuk belajar dan menerapkan Clean Architecture secara terstruktur, modular, dan mudah dikembangkan.

---

## Tujuan Project

Project ini dibuat sebagai playground sekaligus referensi implementasi:

- Clean Architecture di Flutter
- Pemisahan concern per layer dan per module
- State management yang konsisten
- Fondasi project yang siap scale

---

## Tech Stack

- Flutter SDK (Dart 3.8+)
- flutter_bloc (state management)
- go_router (navigation)
- get_it (dependency injection)
- dio (HTTP client)
- freezed + json_serializable (model/data class)
- dartz + equatable (functional dan value equality)
- flutter_secure_storage (secure local storage)

---

## Struktur Project

Struktur utama di folder lib:

```text
lib/
  core/
    component/
    constant/
    env/
    extensions/
    l10n/
    local_storage/
    network/
    route/
    theme/
    utils/
  module/
    auth/
    dashboard/
    event/
    home/
    profile/
    splash/
    sponsor/
  main.dart
  main_module.dart
```

Pendekatan yang dipakai:

- core menyimpan komponen reusable lintas fitur
- module menyimpan fitur secara terpisah agar maintainable
- setiap fitur bisa dikembangkan mengikuti pola layer Clean Architecture (presentation, domain, data)

---

## Setup Awal

1. Install dependency:

```sh
flutter pub get
```

2. Jalankan script inisialisasi:

```sh
./script/setup.sh
```

3. Siapkan file konfigurasi environment:

```sh
cp config.json.example config.json
```

4. Jalankan aplikasi:

```sh
flutter run
```

---

## Script yang Tersedia

- Setup project

```sh
./script/setup.sh
```

- Build runner

```sh
./script/build_runner.sh
```

- Generate module baru

```sh
./script/gen_module.sh
```

- Generate translation

```sh
./script/gen_translate.sh
```

- Generate icon launcher

```sh
./script/gen_icon_app_launcher.sh
```

- Generate splash screen

```sh
./script/gen_icon_splash_screen.sh
```

- Generate test coverage

```sh
./script/gen_test_coverage.sh
```

- Build APK

```sh
./script/build_apk.sh
```

- Build AAB

```sh
./script/build_aab.sh
```

---

## Best Practice Pengembangan

- Pisahkan logic UI dan business logic
- Gunakan dependency injection untuk memudahkan testing
- Hindari akses langsung data source dari layer presentation
- Gunakan model immutable (freezed) untuk kestabilan state
- Tambahkan unit test untuk use case dan bloc/cubit utama

---

## Menjalankan Test

```sh
flutter test
```

Untuk coverage, gunakan:

```sh
./script/gen_test_coverage.sh
```

---

## Catatan

- File config.json berisi konfigurasi environment lokal, jangan di-commit jika berisi data sensitif.
- Untuk penambahan fitur baru, disarankan menggunakan pola module agar struktur tetap konsisten.
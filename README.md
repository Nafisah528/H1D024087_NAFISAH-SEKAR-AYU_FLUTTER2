# Tugas Praktikum Pemrograman Mobile - Modul 2

## Identitas Mahasiswa
*   **Nama:** Nafisah Sekar Ayu
*   **NIM:** H1D024087
*   **Shift Awal:** H
*   **Shift Akhir:** D

---

## 📝 Deskripsi Proyek
Repositori ini berisi kode sumber untuk tugas praktikum **Belajar Flutter (Modul 2)**. Proyek ini dibuat sebagai media pembelajaran dasar untuk memahami cara kerja framework Flutter dan bahasa pemrograman Dart.

Maksud utama dari sistem ini adalah untuk mendemonstrasikan penggunaan berbagai *Widget* dasar Flutter, mulai dari menampilkan teks sederhana, mengatur tata letak (layout), membuat form input, navigasi antar halaman, hingga menampilkan daftar data (ListView). 

*Catatan: Tampilan antarmuka (UI) disesuaikan dengan modul dengan mengaktifkan `useMaterial3: false` pada `main.dart` agar warna AppBar kembali menjadi biru (standar Material 2).*

## ✨ Fitur yang Didemonstrasikan
1.  **Hello World**: Menampilkan teks dasar di tengah layar menggunakan widget `Text` dan `Center`.
2.  **Layout Dasar**: Penggunaan widget `Column` (vertikal) dan `Row` (horizontal) untuk menyusun elemen UI.
3.  **Form Input**: Halaman form untuk memasukkan data produk (Kode, Nama, Harga) menggunakan `TextEditingController`.
4.  **Navigasi & Passing Data**: Mengirim data dari halaman Form ke halaman Detail Produk menggunakan `Navigator.push`.
5.  **ListView**: Menampilkan daftar produk statis menggunakan widget `ListView` dan `ListTile`.

## 📂 Struktur dan Penjelasan Kode
Berikut adalah penjelasan fungsi dari masing-masing file di dalam folder `lib`:

*   **`main.dart`**: Titik masuk (entry point) aplikasi. File ini berfungsi sebagai pusat kendali yang memanggil halaman mana yang akan ditampilkan pertama kali.
*   **`hello_world.dart`**: Berisi implementasi dasar `StatelessWidget` yang menampilkan AppBar dan teks "Hello World".
*   **`column_widget.dart` & `row_widget.dart`**: File latihan untuk memahami cara kerja *Flex Layout* pada Flutter (menyusun widget secara vertikal dan horizontal).
*   **`ui/produk_form.dart`**: Halaman yang berisi form input. Menggunakan `StatefulWidget` karena ada perubahan state saat pengguna mengetik. Terdapat tombol simpan untuk berpindah halaman.
*   **`ui/produk_detail.dart`**: Halaman yang menerima data (Kode, Nama, Harga) dari halaman form dan menampilkannya dalam bentuk teks.
*   **`ui/produk_page.dart`**: Halaman yang menampilkan daftar produk statis menggunakan `ListView` dan `Card`.

## 📸 Dokumentasi Hasil Modul 2
<img width="360" alt="Hasil Modul 2" src="https://github.com/user-attachments/assets/3aaafb71-43d3-4d46-9f89-3a2cd61c5803" />

---

# Tugas Praktikum Pemrograman Mobile - Modul 3
### Routes, Side Menu, Login dan Local Storage Framework Flutter

## 📝 Deskripsi Proyek
Bagian ini berisi implementasi dari **Modul 3 Pemrograman Mobile**, yang berfokus pada pembuatan sistem autentikasi (login), penyimpanan sesi pengguna di penyimpanan lokal (*local storage*) perangkat menggunakan library `shared_preferences`, pembuatan menu navigasi samping (*side menu / navigation drawer*), serta pengelolaan rute (*routing*) antar halaman.

Aplikasi diawali dari halaman Login, memvalidasi kredensial pengguna, menyimpan username ke dalam `SharedPreferences`, lalu mengarahkan pengguna ke halaman Home yang menampilkan username aktif dan menyediakan Drawer untuk berpindah ke halaman Home maupun About.

---

## ✨ Fitur Utama Modul 3
1. **Autentikasi & Form Login (`login_page.dart`)**:
   - Input username dan password dengan fitur proteksi teks (*obscure text* untuk password).
   - Validasi kredensial (simulasi login dengan username: `admin` dan password: `admin`).
   - Penanganan feedback interaktif menggunakan `AlertDialog`:
     - **Login Berhasil:** Memunculkan dialog `"Anda Berhasil Login"`, menyimpan sesi ke local storage, dan mengarahkan ke `HomePage`.
     - **Login Gagal:** Memunculkan dialog `"Username dan Password Salah"` dan mengembalikan pengguna ke halaman login.

2. **Local Storage (`shared_preferences: ^2.0.17`)**:
   - Menyimpan data sesi login berupa string username ke dalam memori lokal perangkat menggunakan `prefs.setString('username', ...)`.
   - Mengambil data yang tersimpan secara asinkronus menggunakan `prefs.getString('username')` pada halaman Home untuk menampilkan user yang sedang aktif.

3. **Menu Samping / Navigation Drawer (`sidemenu.dart`)**:
   - Komponen navigasi *reusable* yang disematkan pada properti `drawer` di `Scaffold`.
   - Terdiri dari `DrawerHeader` bertuliskan `"Sidemenu"` serta daftar menu `ListTile`:
     - **Home** (icon `Icons.home`): Mengarahkan rute kembali ke `HomePage`.
     - **About** (icon `Icons.info`): Mengarahkan rute ke `AboutPage`.

4. **Halaman Home (`home_page.dart`)**:
   - Membaca username dari local storage secara otomatis melalui method `_loadUsername()`.
   - Menampilkan teks salam: `"Ini adalah halaman User $namauser"`.
   - Terintegrasi dengan widget `Sidemenu` pada bagian AppBar.

5. **Halaman About (`about_page.dart`)**:
   - Halaman sekunder yang menampilkan teks informasi `"Ini adalah halaman About"`.
   - Dilengkapi dengan Drawer `Sidemenu` agar pengguna dapat berpindah kembali ke halaman utama secara konsisten.

---

## 📂 Struktur File Tambahan (Modul 3)
Berikut adalah file-file yang dibuat dan digunakan untuk memenuhi kebutuhan Modul 3:

```
lib/
├── login_page.dart   # Halaman login, validasi admin, dialog alert, dan simpan SharedPreferences
├── home_page.dart    # Halaman utama pasca-login, membaca SharedPreferences, memuat Sidemenu
├── sidemenu.dart     # Komponen Drawer navigasi (Home & About)
├── about_page.dart   # Halaman informasi About dengan integrasi Sidemenu
└── main.dart         # Entry point aplikasi yang mengarahkan home ke LoginPage()
```

---

## 🔑 Kredensial Login Pengujian
Untuk mencoba alur login aplikasi:
*   **Username:** `admin`
*   **Password:** `admin`

---

## 🚀 Cara Menjalankan Proyek
Pastikan perangkat Anda telah terpasang **Flutter SDK** (versi 3.x) dan emulator Android / perangkat fisik:

1. **Clone repositori ini:**
   ```bash
   git clone https://github.com/Nafisah528/H1D024087_NAFISAH-SEKAR-AYU_FLUTTER2.git
   ```
2. **Masuk ke direktori proyek:**
   ```bash
   cd H1D024087_NAFISAH-SEKAR-AYU_FLUTTER2
   ```
3. **Unduh dependensi yang diperlukan:**
   ```bash
   flutter pub get
   ```
4. **Jalankan aplikasi:**
   ```bash
   flutter run
   ```
5. **Menjalankan unit / widget testing:**
   ```bash
   flutter test
   ```

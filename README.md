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

*   **`main.dart`**: Titik masuk (entry point) aplikasi. File ini berfungsi sebagai pusat kendali yang memanggil halaman mana yang akan ditampilkan pertama kali (saat ini disetel untuk memanggil `ProdukPage`).
*   **`hello_world.dart`**: Berisi implementasi dasar `StatelessWidget` yang menampilkan AppBar dan teks "Hello World".
*   **`column_widget.dart` & `row_widget.dart`**: File latihan untuk memahami cara kerja *Flex Layout* pada Flutter (menyusun widget secara vertikal dan horizontal).
*   **`ui/produk_form.dart`**: Halaman yang berisi form input. Menggunakan `StatefulWidget` karena ada perubahan state saat pengguna mengetik. Terdapat tombol simpan untuk berpindah halaman.
*   **`ui/produk_detail.dart`**: Halaman yang menerima data (Kode, Nama, Harga) dari halaman form dan menampilkannya dalam bentuk teks.
*   **`ui/produk_page.dart`**: Halaman yang menampilkan daftar produk statis menggunakan `ListView`.

## 🚀 Cara Menjalankan Proyek
Jika Anda ingin menjalankan proyek ini di komputer Anda, pastikan Anda sudah menginstal **Flutter SDK** dan **Android Studio**.

## Dokumentasi hasil
<img width="738" height="1599" alt="WhatsApp Image 2026-11-05 at 00 09 46" src="https://github.com/user-attachments/assets/3aaafb71-43d3-4d46-9f89-3a2cd61c5803" />


1. Clone repositori ini:
   ```bash
   git clone https://github.com/username-anda/belajarflutter.git

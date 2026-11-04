import 'package:flutter/material.dart';
import 'package:belajarflutter/ui/produk_page.dart'; // Import halaman ListView

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Flutter Pertama",
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: const ProdukPage(), // Menampilkan halaman ListView
    );
  }
}

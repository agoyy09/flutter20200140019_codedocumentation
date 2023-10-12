import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());///my app
}

// Kelas MyApp adalah widget utama dalam aplikasi Anda.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
///my app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Tema aplikasi menggunakan colorScheme dengan warna dasar deepPurple.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Halaman beranda aplikasi adalah MyHomePage.
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Kelas MyHomePage adalah widget yang menampilkan tampilan utama aplikasi.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Kelas _MyHomePageState adalah kelas yang mengelola status MyHomePage.
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Warna latar belakang bilah atas diambil dari tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Anda telah menekan tombol ini sebanyak:',
            ),
            Text(
              '$_counter',
              // Gaya teks diambil dari tema aplikasi.
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah',
        child: const Icon(Icons.add),
      ),
    );
  }
}

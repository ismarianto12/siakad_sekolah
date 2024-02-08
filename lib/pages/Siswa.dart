import 'package:flutter/material.dart';

class Siswa extends StatefulWidget {
  const Siswa({super.key});

  @override
  State<Siswa> createState() => _SiswaState();
}

class _SiswaState extends State<Siswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Siswa"),
      ),
    );
  }
}

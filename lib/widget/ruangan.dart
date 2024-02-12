import 'package:flutter/material.dart';

class Ruangan extends StatefulWidget {
  const Ruangan({super.key});

  @override
  State<Ruangan> createState() => _RuanganState();
}

class _RuanganState extends State<Ruangan> {
  List<String> datasiswa = [
    'qweq',
    'qweq',
    'qweq',
    'qweq',
    'qweq',
    'qweq',
    'qweq',
    'qweq',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: datasiswa.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(datasiswa[index]),
          ),
        );
      },
    );
  }
}

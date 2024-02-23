import 'package:absensi_siswa/widget/DetailSiwa.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../utils/MyCustomRoute.dart';

class Siswa extends StatefulWidget {
  const Siswa({super.key});

  @override
  State<Siswa> createState() => _SiswaState();
}

class _SiswaState extends State<Siswa> {
  final TextEditingController _controller = TextEditingController();
  bool isAscending = true;
  final List<String> names = [
    'John',
    'Jane',
    'Doe',
    'Alice',
    'Bob',
    'Charlie',
    'John',
    'Jane',
    'Doe',
    'Alice',
    'Bob',
    'Charlie'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_back_ios_new,
                          size: 30, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.75,
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Cari Siswa',
                      hintText: 'Masukkan nama Anda',
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.70,
                  height: MediaQuery.sizeOf(context).width * 0.10,
                  decoration: BoxDecoration(
                    // border: Border
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        isAscending
                            ? Icons.filter_list_rounded
                            : Icons.filter_alt_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            // Toggle antara ascending dan descending
                            isAscending = !isAscending;
                          });
                          // Lakukan pengurutan sesuai dengan kebutuhan Anda
                          if (isAscending) {
                            // Lakukan pengurutan ascending
                            print('Pengurutan Ascending');
                          } else {
                            // Lakukan pengurutan descending
                            print('Pengurutan Descending');
                          }
                        },
                        child: Text(
                          isAscending ? 'Urut Asc' : 'Urut Desc',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Filter Data',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 125, 124, 124),
                      fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(_createRoute());
                      },
                      child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew,
                                color: const Color.fromARGB(255, 3, 3, 3)),
                          ),
                          title: Text(
                            "Introduction to Driving",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                          subtitle: Row(
                            children: <Widget>[
                              Icon(Icons.linear_scale,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                              Text(" Intermediate",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: const Color.fromARGB(255, 14, 14, 14),
                              size: 30.0)),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const DetailSiswa(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

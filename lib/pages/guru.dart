import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../widget/ruangan.dart';

class Guru extends StatefulWidget {
  const Guru({super.key});

  @override
  State<Guru> createState() => _GuruState();
}

class _GuruState extends State<Guru> {
  late FocusNode searchFocusNode;
  bool isAscending = true;
  int index_color = 1;

  @override
  void initState() {
    super.initState();
    searchFocusNode = FocusNode();
    searchFocusNode.requestFocus();
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 30,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 0, 180, 230)!,
              const Color.fromARGB(255, 38, 121, 255)!,
              const Color.fromARGB(255, 168, 128, 255)!,
            ],
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, color: Colors.white),
                    Text(
                      "Kembali",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.90,
              height: MediaQuery.sizeOf(context).height * 0.05,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 99, 99, 99),
                    blurRadius: 15,
                    offset: Offset(2, 10),
                  )
                ],
                color: Color.fromARGB(255, 242, 242, 242),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index_color = 1;
                        });
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.40,
                        height: MediaQuery.sizeOf(context).width * 0.10,
                        decoration: BoxDecoration(
                          // border: Border
                          color: index_color == 1
                              ? Color.fromARGB(255, 0, 180, 230)!
                              : Color.fromARGB(255, 255, 255, 255),
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
                            Text(
                              'Data Ruangan',
                              style: TextStyle(
                                  color: index_color == 2
                                      ? Color.fromARGB(255, 0, 0, 0)
                                      : const Color.fromARGB(
                                          255, 255, 255, 255),
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle antara ascending dan descending
                          // print(index_color);
                          index_color = 2;
                          // isAscending = !isAscending;
                        });
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.40,
                        height: MediaQuery.sizeOf(context).width * 0.10,
                        decoration: BoxDecoration(
                          // border: Border
                          color: index_color == 2
                              ? Color.fromARGB(255, 0, 180, 230)!
                              : const Color.fromARGB(255, 218, 218, 218),

                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              isAscending
                                  ? Icons.filter_list_rounded
                                  : Icons.filter_alt_outlined,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Tambah Data',
                              style: TextStyle(
                                  color: index_color == 2
                                      ? const Color.fromARGB(255, 255, 255, 255)
                                      : const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 20,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 179, 179, 179),
                      blurRadius: 15,
                      offset: Offset(2, 10),
                    )
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      const Color.fromARGB(255, 255, 255, 255)!,
                      const Color.fromARGB(255, 255, 255, 215)!,
                      const Color.fromARGB(255, 255, 255, 255)!,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Expanded(
                      child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.90,
                          height: MediaQuery.sizeOf(context).height * 0.20,
                          child: Ruangan()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 179, 179, 179),
                              blurRadius: 15,
                              offset: Offset(2, 10),
                            )
                          ],
                          color: Color.fromARGB(255, 38, 204, 255),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Cari Data",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

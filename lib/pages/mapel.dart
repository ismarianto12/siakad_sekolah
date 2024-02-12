import 'package:absensi_siswa/widget/ruangan.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../widget/MapelForm.dart';

class Mapel extends StatefulWidget {
  const Mapel({super.key});

  @override
  State<Mapel> createState() => _MapelState();
}

class _MapelState extends State<Mapel> {
  bool isAscending = true;
  int index_color = 1;
  List<String> names = [
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

  List<Widget> screen = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => {
                    Navigator.of(context).pop(),
                  },
                  child: Icon(
                    Icons.arrow_back_ios_sharp,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Data ${index_color == 2 ? 'Mata Pelajaran' : 'Input Mapel'}",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfiSLmcV-yfQOzJyHEeHqtQtQReBcwmmfnhFtK-kAonv9aycNebG3_S779dmBqpx9EcW8&usqp=CAU",
              height: 100),
          SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.05,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 218, 218, 218),
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
                            ? Colors.green
                            : Color.fromARGB(255, 218, 218, 218),
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
                                    : const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
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
                      width: MediaQuery.sizeOf(context).width * 0.45,
                      height: MediaQuery.sizeOf(context).width * 0.10,
                      decoration: BoxDecoration(
                        // border: Border
                        color: index_color == 2
                            ? Colors.green
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
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Data Ruangan',
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
            height: 30,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Color.fromARGB(255, 209, 209, 209),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Color.fromARGB(255, 235, 235, 235)!,
                    const Color.fromARGB(255, 255, 255, 255)!,
                    const Color.fromARGB(255, 211, 211, 211)!,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: index_color == 2
                    ? MapelForm()
                    : ListView.builder(
                        itemCount: names.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile(
                              leading: Icon(Icons.person),
                              title: Text(names[index]),
                              onTap: () {
                                final snackBar = SnackBar(
                                  content: Text(names[index]),
                                  duration: Duration(seconds: 3),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {
                                      print('Close...');
                                    },
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            ),
                          );
                        },
                      ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

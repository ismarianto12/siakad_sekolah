import 'package:absensi_siswa/pages/Profile.dart';
import 'package:flutter/material.dart';
import 'package:absensi_siswa/pages/Dashboard.dart';

import 'package:unicons/unicons.dart';

class Navigate extends StatefulWidget {
  const Navigate({Key? key}) : super(key: key);

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  int index_color = 0;
  List<Widget> screens = [
    Dashboard(),
    Dashboard(),
    Dashboard(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: screens[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Dashboard()));
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff368983),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.06,
        color: Color.fromARGB(255, 10, 172, 107),
        shape: CircularNotchedRectangle(),
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.3,
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index_color = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: index_color == 0
                            ? BorderSide(
                                color: Colors
                                    .white, // Set the color of the bottom border
                                width:
                                    2.0, // Set the width of the bottom border
                              )
                            : BorderSide(
                                color: Colors
                                    .transparent, // Set the color of the bottom border
                                width:
                                    2.0, // Set the width of the bottom border
                              ),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Icon(
                          UniconsLine.estate,
                          size: 19,
                          color: index_color == 0
                              ? Colors.white
                              : Colors.green[100],
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index_color = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Icon(
                        UniconsLine.list_ui_alt,
                        size: 19,
                        color:
                            index_color == 2 ? Colors.white : Colors.green[100],
                      ),
                      Text(
                        "Rerport Presensi",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 11.0,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index_color = 3;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: index_color == 3
                            ? BorderSide(
                                color: Colors
                                    .white, // Set the color of the bottom border
                                width:
                                    2.0, // Set the width of the bottom border
                              )
                            : BorderSide(
                                color: Colors
                                    .transparent, // Set the color of the bottom border
                                width:
                                    2.0, // Set the width of the bottom border
                              ),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Icon(
                          UniconsLine.user,
                          size: 19,
                          color: index_color == 3
                              ? const Color.fromARGB(255, 255, 255, 255)
                              : const Color.fromARGB(255, 255, 255, 255),
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 11.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:absensi_siswa/pages/Profile.dart';
import 'package:absensi_siswa/pages/Searh.dart';
import 'package:flutter/material.dart';
import 'package:absensi_siswa/models/Menu.dart';
import 'package:flutter/rendering.dart';
import 'package:unicons/unicons.dart';
// import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Menu> menus = [
    Menu(
        title: "Data Siswa",
        url: "/siswa",
        icon: UniconsLine.user_square,
        colors: Colors.red),
    Menu(
        title: "Data Kelas",
        url: "/kelas",
        icon: UniconsLine.building,
        colors: Colors.blue),
    Menu(
        title: "Data Guru",
        url: "/guru",
        icon: UniconsLine.graduation_cap,
        colors: Colors.red),
    Menu(
        title: "Data N",
        url: "/ss",
        icon: UniconsLine.graduation_cap,
        colors: Colors.greenAccent),
    Menu(
        title: "Data mm",
        url: "/as",
        icon: Icons.verified_user_sharp,
        colors: Colors.green),
    Menu(
        title: "Data Mapel",
        url: "/mapel",
        icon: UniconsLine.book_medical,
        colors: Colors.green),
    Menu(
        title: "Data n",
        url: "/ss",
        icon: Icons.verified_user_sharp,
        colors: Colors.red),
    Menu(
        title: "Laporan Siswa",
        url: "/laporan_siswa",
        icon: UniconsLine.angle_double_left,
        colors: Colors.red),
  ];

  ScrollController _scrollController = ScrollController();
  double scrollValue = 1;

  @override
  void initState() {
    super.initState();
    startAutoScroll();
  }

  void startAutoScroll() {
    const double scrollSpeed = 0.5; // Adjust the speed as needed
    // Periodic timer to scroll the content
    Timer.periodic(Duration(milliseconds: 5), (timer) {
      scrollValue += scrollSpeed;
      if (scrollValue > _scrollController.position.maxScrollExtent) {
        scrollValue = 0;
      }
      _scrollController.animateTo(
        scrollValue,
        duration: Duration(milliseconds: 5),
        curve: Curves.linear,
      );
    });
  }

  _logoutApps(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(Icons.info),
              SizedBox(
                width: 10,
              ),
              Text('Konfirmasi'),
            ],
          ),
          content: Text('Yakin logout dari aplikasi'),
          actions: [
            Row(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                  width: MediaQuery.sizeOf(context).width * 0.30,
                  // margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 99, 99, 99),
                        blurRadius: 15,
                        offset: Offset(2, 10),
                      )
                    ],
                    color: Colors.orange[400],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/'); // Dismiss the dialog
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                    width: MediaQuery.sizeOf(context).width * 0.30,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 99, 99, 99),
                          blurRadius: 15,
                          offset: Offset(2, 10),
                        )
                      ],
                      color: const Color.fromARGB(255, 255, 38, 38),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "Logout",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            )
            // TextButton(
            //   onPressed: () {
            //     Navigator.of(context).pop(); // Dismiss the dialog
            //   },
            //   child: Text('Cancel'),
            // ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/'); // Dismiss the dialog
            //   },
            //   child: Text('Confirm'),
            // ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 0, 230, 15)!,
                  Color.fromARGB(255, 38, 255, 168)!,
                  const Color.fromARGB(255, 209, 133, 18)!,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Dashboard Panel',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            'Welcome Page',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _logoutApps(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Logout',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Icon(UniconsLine.sign_out_alt,
                                    size: 29, color: Colors.white),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Center(
                //   child: Container(
                //     width: MediaQuery.of(context).size.width * 0.90,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Color.fromARGB(255, 252, 252, 252),
                //       border: Border(
                //         bottom: BorderSide(
                //             color: const Color.fromARGB(255, 2, 2, 2)),
                //       ),
                //     ),
                //     child: Expanded(
                //       flex: 1,
                //       child: Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Text(
                //           'Menu Utama',
                //           style: TextStyle(
                //             color: Color.fromARGB(255, 55, 37, 37),
                //             fontSize: 20,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage())),
                  },
                  child: Center(
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: MediaQuery.of(context).size.width * 0.10,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 99, 99, 99),
                                blurRadius: 15,
                                spreadRadius: -5,
                                offset: Offset(2, 10),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20.0),
                              right: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Search Here ...',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 55, 37, 37),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.56,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 99, 99, 99),
                          blurRadius: 15,
                          spreadRadius:
                              -5, // Use a negative value to create an inner shadow
                          offset: Offset(2, 10),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(UniconsLine.list_ui_alt),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Menu Utama',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 9, 8, 8),
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.20,
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4, // Number of columns
                                crossAxisSpacing:
                                    12.0, // Spacing between columns
                                mainAxisSpacing: 8.0, // Spacing between rows
                              ),
                              itemCount: menus.length.toInt(),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () => {
                                    Navigator.pushNamed(
                                        context, menus[index].url)
                                  },
                                  child: Container(
                                    height: MediaQuery.sizeOf(context).height,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.06,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.12,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 192, 192, 192),
                                                blurRadius: 15,
                                                offset: Offset(4, 10),
                                              )
                                            ],
                                            color: menus[index].colors!,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(100),
                                            ),
                                          ),
                                          child: Center(
                                            child: Icon(menus[index].icon,
                                                color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          menus[index].title,
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(UniconsLine.list_ui_alt),
                              Text(
                                'Promo',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 9, 8, 8),
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.20,
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).width * 0.20,
                            width: MediaQuery.sizeOf(context).width,
                            child: SingleChildScrollView(
                              controller: _scrollController,
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Card(
                                    child: Image.network(
                                        "https://images.tokopedia.net/img/cache/1208/NsjrJu/2024/1/30/2dc5ca3c-68af-424a-947f-1fd8e9e7542e.jpg.webp?ect=4g"),
                                  ),
                                  Card(
                                    child: Image.network(
                                        "https://images.tokopedia.net/img/cache/1208/NsjrJu/2024/1/30/2dc5ca3c-68af-424a-947f-1fd8e9e7542e.jpg.webp?ect=4g"),
                                  ),
                                  Card(
                                    child: Image.network(
                                        "https://images.tokopedia.net/img/cache/1208/NsjrJu/2024/1/30/2dc5ca3c-68af-424a-947f-1fd8e9e7542e.jpg.webp?ect=4g"),
                                  )
                                ],
                              ),
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    // super.dispose();
  }
}

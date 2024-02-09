import 'package:absensi_siswa/pages/Profile.dart';
import 'package:absensi_siswa/pages/Searh.dart';
import 'package:flutter/material.dart';
import 'package:absensi_siswa/models/Menu.dart';
import 'package:flutter/rendering.dart';

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
        icon: Icons.supervised_user_circle_sharp,
        colors: Colors.red),
    Menu(
        title: "Data Kelas",
        url: "/dashboard",
        icon: Icons.book,
        colors: Colors.blue),
    Menu(
        title: "Data Guru",
        url: "/guru",
        icon: Icons.account_balance_rounded,
        colors: Colors.red),
    Menu(
        title: "Data N",
        url: "/ss",
        icon: Icons.verified_user_sharp,
        colors: Colors.greenAccent),
    Menu(
        title: "Data mm",
        url: "/as",
        icon: Icons.verified_user_sharp,
        colors: Colors.green),
    Menu(
        title: "Data Mapel",
        url: "/as",
        icon: Icons.verified_user_sharp,
        colors: Colors.orange),
    Menu(
        title: "Data n",
        url: "/ss",
        icon: Icons.verified_user_sharp,
        colors: Colors.red),
    Menu(
        title: "Data b",
        url: "/ddd",
        icon: Icons.verified_user_sharp,
        colors: Colors.red),
  ];

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
                  Color.fromARGB(255, 0, 230, 88)!,
                  const Color.fromARGB(255, 38, 255, 85)!,
                  // Color.fromARGB(255, 255, 255, 255)!,
                  // Color.fromARGB(255, 255, 255, 255)!,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          Text(
                            'Menu Utama',
                            style: TextStyle(
                                color: Color.fromARGB(255, 9, 8, 8),
                                fontSize: 20),
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
                                                  0.11,
                                          decoration: BoxDecoration(
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
                          Text(
                            'Promo',
                            style: TextStyle(
                                color: Color.fromARGB(255, 9, 8, 8),
                                fontSize: 20),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).width * 0.20,
                            width: MediaQuery.sizeOf(context).width,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                // verticalDirection: VerticalDirection.,
                                children: <Widget>[
                                  Image.network(
                                      "https://images.tokopedia.net/img/cache/1208/NsjrJu/2024/1/30/2dc5ca3c-68af-424a-947f-1fd8e9e7542e.jpg.webp?ect=4g"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.network(
                                      "https://images.tokopedia.net/img/cache/1208/NsjrJu/2024/1/30/2dc5ca3c-68af-424a-947f-1fd8e9e7542e.jpg.webp?ect=4g")
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
}

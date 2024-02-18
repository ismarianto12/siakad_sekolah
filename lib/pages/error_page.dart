import 'package:absensi_siswa/pages/Searh.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Error_page extends StatefulWidget {
  const Error_page({super.key});
  @override
  State<Error_page> createState() => _Error_pageState();
}

class _Error_pageState extends State<Error_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 30,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   colors: [
          //     Color(0xFFD9D9D9)!,
          //     Color.fromARGB(255, 193, 193, 193)!,
          //     Color.fromARGB(255, 218, 218, 218)!,
          //   ],
          // ),
          color: Color.fromARGB(255, 0, 170, 255),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                      "Halaman dalam perbaikan",
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
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 20,
                decoration: BoxDecoration(
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
                    Image.network(
                      "https://cdni.iconscout.com/illustration/premium/thumb/search-not-found-8291000-6632131.png",
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchPage()));
                      },
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 38, 204, 255),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                UniconsLine.search,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Cari Data",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
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

import 'package:absensi_siswa/widget/SiswaForm.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../widget/GuruForm.dart';
import '../widget/MapelForm.dart';
import '../widget/ruangan.dart';

class DetailSiswa extends StatefulWidget {
  const DetailSiswa({super.key});

  @override
  State<DetailSiswa> createState() => _DetailSiswaState();
}

class _DetailSiswaState extends State<DetailSiswa> {
  late FocusNode searchFocusNode;
  bool isAscending = true;
  int index_color = 1;
  int acivebutton = 1;
  int statlistitle = 0;

  @override
  void initState() {
    super.initState();
  }

  void activeBtnAction(int param) {
    setState(() {
      acivebutton = param;
    });
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Header(context),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 20,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      blurRadius: 15,
                      offset: Offset(2, 10),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Bodata : ${_renderCat(acivebutton)}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              activeBtnAction(1);
                            },
                            child:
                                ButtonCat(context, "Biodata", 1, acivebutton)),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                            onTap: () {
                              activeBtnAction(2);
                            },
                            child: ButtonCat(context, "Orang", 2, acivebutton)),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                            onTap: () {
                              activeBtnAction(3);
                            },
                            child:
                                ButtonCat(context, "Alamat", 3, acivebutton)),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                            onTap: () {
                              activeBtnAction(4);
                            },
                            child:
                                ButtonCat(context, "Akademik", 4, acivebutton)),
                      ],
                    ),
                    Expanded(child: SiswaForm()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }
}

Widget Header(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new)),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Detail Siswa",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rahmed Maulana",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
            // Text(
            //   "Design",
            //   style: TextStyle(color: Colors.black, fontSize: 28),
            // ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.sizeOf(context).width * 0.20,
        height: MediaQuery.sizeOf(context).width * 0.20,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100))),
        child: Center(
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQsWGsiGUXzgug60XJ2YDaTGPSK5bIuPzz3BfJdKmtlnbYvtMDUEndyCQmAWcnbsVLNwU&usqp=CAU",
            width: 50,
          ),
        ),
      ),
    ],
  );
}

Widget ButtonCat(BuildContext context, label, int active, acivebutton) {
  return Container(
    width: MediaQuery.sizeOf(context).width * 0.2,
    decoration: BoxDecoration(
      color: acivebutton == active ? Colors.blueAccent : Colors.white,
      border: Border.all(
        color: acivebutton == active
            ? Colors.blueAccent
            : Color.fromARGB(255, 239, 239, 3),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
              color: acivebutton == active
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : const Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    ),
  );
}

String _renderCat(int cat) {
  switch (cat) {
    case 1:
      return "Biodata";
    case 2:
      return "Orang Tua /Wali";
    case 3:
      return "Data Sekolah";
    case 4:
      return "Pelajaran";
    default:
      return "Alamat Dan lain-lain";
  }
}

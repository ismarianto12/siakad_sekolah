import 'package:absensi_siswa/pages/Searh.dart';
import 'package:absensi_siswa/widget/navigate.dart';
import 'package:flutter/material.dart';

class DetailAbsen extends StatefulWidget {
  const DetailAbsen({super.key});

  @override
  State<DetailAbsen> createState() => _DetailAbsenState();
}

class _DetailAbsenState extends State<DetailAbsen> {
  late FocusNode searchFocusNode;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Header(context),
              SearchBar(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Category(context, activeBtnAction, acivebutton),
              ),
              SizedBox(
                height: 2,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                statlistitle = 1;
                              });
                            },
                            child: Listile(context, statlistitle, 1)),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                statlistitle = 2;
                              });
                            },
                            child: Listile(context, statlistitle, 2)),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                statlistitle = 3;
                              });
                            },
                            child: Listile(context, statlistitle, 3)),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                statlistitle = 4;
                              });
                            },
                            child: Listile(context, statlistitle, 4)),
                        SizedBox(
                          height: 20,
                        ),
                        CourseList(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

Widget Header(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: Navigate()));
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new)),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Detail Absensi Siswa",
              style: TextStyle(
                  color: Colors.black,
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
      Center(
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQsWGsiGUXzgug60XJ2YDaTGPSK5bIuPzz3BfJdKmtlnbYvtMDUEndyCQmAWcnbsVLNwU&usqp=CAU",
          width: 100,
        ),
      ),
    ],
  );
}

Widget SearchBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: GestureDetector(
      onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SearchPage())),
      },
      child: Center(
        child: Container(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.10,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 208, 208),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20.0),
                  right: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search Here ...',
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 37, 37),
                        fontSize: 15,
                      ),
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
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
      return "Hadir";
    case 2:
      return "Apha";
    case 3:
      return "Izin";
    case 4:
      return "Tanpa Keterangan";
    default:
      return "Tanpa Keterangan";
  }
}

Widget Listile(BuildContext context, statlistitle, urutan) {
  return Container(
    decoration: BoxDecoration(
      // boxShadow: [
      //   BoxShadow(
      //     color: Color.fromARGB(255, 200, 200, 200),
      //     blurRadius: 15,
      //     offset: Offset(10, 10),
      //   )
      // ],
      color: Color.fromARGB(255, 141, 218, 246),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hadir',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Divider(
                color: Colors.green,
              ),
              Icon(urutan == statlistitle ? Icons.minimize : Icons.add,
                  color: Colors.white),
            ],
          ),
          urutan == statlistitle
              ? Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Detail Catatan : Yes, Flutter is better than React Native, but only in certain aspects. For instance, Flutter applications offer better performance, have little compatibility issues, and are easy to develop. Nonetheless, there are several other aspects and conditions one needs to consider before making a pick',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    ),
  );
}

Widget Category(BuildContext context, activeBtnAction, acivebutton) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Status Absensi :${_renderCat(acivebutton)}",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  activeBtnAction(1);
                },
                child: ButtonCat(context, "Hadir", 1, acivebutton)),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
                onTap: () {
                  activeBtnAction(2);
                },
                child: ButtonCat(context, "Alpha", 2, acivebutton)),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
                onTap: () {
                  activeBtnAction(3);
                },
                child: ButtonCat(context, "Alpha", 3, acivebutton)),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
                onTap: () {
                  activeBtnAction(4);
                },
                child: ButtonCat(context, "Izin", 4, acivebutton)),
          ],
        ),
      ]);
}

Widget CourseList(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "Popular Courses :",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
      ),
      SizedBox(
        height: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.3,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: MediaQuery.sizeOf(context).height * 0.18,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Image.network(
                        "https://elmlearning.com/wp-content/uploads/2023/05/1563092_HubPageImages-eLearning_Microlearning_021423.webp"),
                    Text(
                      "Courses 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.3,
              decoration: BoxDecoration(
                color: Color.fromARGB(152, 60, 197, 243),
                border:
                    Border.all(color: const Color.fromARGB(255, 231, 231, 231)),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: MediaQuery.sizeOf(context).height * 0.18,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Image.network(
                        "https://elmlearning.com/wp-content/uploads/2023/05/1563092_HubPageImages-eLearning_Microlearning_021423.webp"),
                    Text(
                      "Courses 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.3,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 110, 181, 232),
                border: Border.all(color: Color.fromARGB(255, 191, 231, 57)),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: MediaQuery.sizeOf(context).height * 0.18,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                        "https://www.mpowero.com/wp-content/uploads/2020/07/Online-Learning-Misconceptions-vs-Reality-Benefits-of-being-early-an-adaptor.png"),
                    Text(
                      "Courses 3",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.3,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 110, 181, 232),
                border: Border.all(color: Color.fromARGB(255, 191, 231, 57)),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: MediaQuery.sizeOf(context).height * 0.18,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                        "https://www.mpowero.com/wp-content/uploads/2020/07/Online-Learning-Misconceptions-vs-Reality-Benefits-of-being-early-an-adaptor.png"),
                    Text(
                      "Courses 3",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.3,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 110, 181, 232),
                border: Border.all(color: Color.fromARGB(255, 191, 231, 57)),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: MediaQuery.sizeOf(context).height * 0.18,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                        "https://www.mpowero.com/wp-content/uploads/2020/07/Online-Learning-Misconceptions-vs-Reality-Benefits-of-being-early-an-adaptor.png"),
                    Text(
                      "Courses 3",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

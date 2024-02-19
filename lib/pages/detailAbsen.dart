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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
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
                  child: Category(context, setState, acivebutton),
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Listile(context),
                      SizedBox(
                        height: 10,
                      ),
                      Listile(context),
                      SizedBox(
                        height: 10,
                      ),
                      Listile(context),
                      SizedBox(
                        height: 10,
                      ),
                      Listile(context),
                      SizedBox(
                        height: 20,
                      ),
                      CourseList(context),
                    ],
                  ),
                ),
              ],
            ),
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

Widget ButtonCat(BuildContext context, label, active, setState, acivebutton) {
  return GestureDetector(
    onTap: () {
      print(acivebutton.toString() + "adsa");
      setState(() {
        acivebutton = active;
      });
    },
    child: Container(
      width: MediaQuery.sizeOf(context).width * 0.2,
      decoration: BoxDecoration(
        color: active == acivebutton ? Colors.blueAccent : Colors.white,
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: active == 1 ? Colors.white : Colors.black),
          ),
        ),
      ),
    ),
  );
}

Widget Listile(context) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 200, 200, 200),
          blurRadius: 15,
          offset: Offset(2, 10),
        )
      ],
      color: Color.fromARGB(255, 141, 218, 246),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hadir',
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          Icon(Icons.add, color: Colors.white)
        ],
      ),
    ),
  );
}

Widget Category(BuildContext context, setState, acivebutton) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Categori :",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(
          height: 28,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonCat(context, "Hadir", 1, setState, acivebutton),
            SizedBox(
              width: 5,
            ),
            ButtonCat(context, "Alpha", 3, setState, acivebutton),
            SizedBox(
              width: 5,
            ),
            ButtonCat(context, "Alpha", 3, setState, acivebutton),
            SizedBox(
              width: 5,
            ),
            ButtonCat(context, "Izin", 4, setState, acivebutton),
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

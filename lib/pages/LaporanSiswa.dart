import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:intl/intl.dart';

import '../widget/ruangan.dart';

class LaporanSiswa extends StatefulWidget {
  const LaporanSiswa({super.key});

  @override
  State<LaporanSiswa> createState() => _LaporanSiswaState();
}

class _LaporanSiswaState extends State<LaporanSiswa> {
  late FocusNode searchFocusNode;
  TextEditingController _dariController = TextEditingController();
  TextEditingController _sampaiController = TextEditingController();

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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: _dariController,
                // focusNode: searchFocusNode,
                onTap: () async {
                  await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015),
                    lastDate: DateTime(2026),
                  ).then((selectedDate) {
                    if (selectedDate != null) {
                      _dariController.text =
                          DateFormat('yyyy-MM-dd').format(selectedDate);
                    }
                  });
                },
                // controller: _controller,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  isDense: true,
                  labelText: 'Dari',
                  hintText: '',
                  prefixIcon: Icon(Icons.person),
                  // suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    // Set border color here
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                style: TextStyle(
                  fontSize: 16.0,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Dari tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                controller: _sampaiController,
                // focusNode: searchFocusNode,
                onTap: () async {
                  await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015),
                    lastDate: DateTime(2026),
                  ).then((selectedDate) {
                    if (selectedDate != null) {
                      _sampaiController.text =
                          DateFormat('yyyy-MM-dd').format(selectedDate);
                    }
                  });
                },
                // controller: _controller,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  isDense: true,
                  labelText: 'Sampai',
                  hintText: '',
                  prefixIcon: Icon(Icons.person),
                  // suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                style: TextStyle(
                  fontSize: 16.0,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Sampai tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 10,
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

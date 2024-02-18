import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../widget/ruangan.dart';
import 'package:unicons/unicons.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late FocusNode searchFocusNode;
  List<String> data = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grapes',
    'Honeydew',
    'Kiwi',
    'Lemon',
    'Mango',
    'Nectarine',
    'Orange',
    'Peach',
    'Quince',
    'Raspberry',
    'Strawberry',
    'Tomato',
    'Uva',
    'Watermelon',
  ];

  List<String> filteredData = [];

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
                      "Pencarian",
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
                focusNode: searchFocusNode,
                onChanged: (value) {
                  filterData(value);
                },
                // controller: _controller,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Cari Siswa',
                  hintText: 'Masukkan nama Anda',
                  prefixIcon: Icon(Icons.person),
                  // suffixIcon: Icon(Icons.search),
                  focusColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  labelStyle: TextStyle(color: Colors.white), // Label color
                ),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
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
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListView.builder(
                          itemCount: filteredData.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ListTile(
                                  leading: Text(filteredData[index]),
                                  trailing: Icon(Icons.list),
                                ),
                                Container(
                                  width: double.infinity, // Lebar 100%
                                  height: 1.0, // Tinggi garis
                                  color: const Color.fromARGB(
                                      255, 175, 175, 175), // Warna garis
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/dashboard');
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

  void filterData(String query) {
    setState(() {
      filteredData = data
          .where(
              (element) => element.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
}

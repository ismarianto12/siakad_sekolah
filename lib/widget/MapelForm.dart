import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class MapelForm extends StatefulWidget {
  const MapelForm({super.key});

  @override
  State<MapelForm> createState() => _MapelFormState();
}

class _MapelFormState extends State<MapelForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(UniconsLine.user_check,
                                size: 25,
                                color: const Color.fromARGB(255, 0, 0, 0)),
                            Text(
                              'Tambah Data Kelas',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      // controller: _controller,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Cari Siswa',
                        hintText: 'Masukkan nama Anda',
                        prefixIcon: Icon(Icons.person),
                        // suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
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
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      // controller: _controller,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Cari Siswa',
                        hintText: 'Masukkan nama Anda',
                        prefixIcon: Icon(Icons.password),
                        // suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
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
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      // controller: _controller,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Cari Siswa',
                        hintText: 'Masukkan nama Anda',
                        prefixIcon: Icon(Icons.key_outlined),
                        // suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
                      "Save",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
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
                    color: Color.fromARGB(255, 255, 212, 38),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "Reset",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

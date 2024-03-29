import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});
  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).width * 0.45,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Color.fromARGB(255, 230, 192, 0)!,
                      const Color.fromARGB(255, 38, 255, 85)!,
                      const Color.fromARGB(255, 38, 255, 85)!,
                      // Color.fromARGB(255, 255, 255, 255)!,
                      // Color.fromARGB(255, 255, 255, 255)!,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Icon(UniconsLine.user_check,
                                  size: 25, color: Colors.white),
                              Text(
                                'Edit Password',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                          Text(
                            'Raen',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
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
            ],
          ),
        ),
      ),
    );
  }
}

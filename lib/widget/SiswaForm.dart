import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class SiswaForm extends StatefulWidget {
  const SiswaForm({super.key});

  @override
  State<SiswaForm> createState() => _SiswaFormState();
}

class _SiswaFormState extends State<SiswaForm> {
  String _selectedGender =
      ''; // Variable untuk menyimpan jenis kelamin yang dipilih
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.90,
            height: MediaQuery.sizeOf(context).height * 0.20,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Nama',
                        hintText: 'Nama',
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
                        labelText: 'NIK',
                        hintText: 'Nomor induk karyawan.',
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
                          return 'Nomor induk karyawan.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField<String>(
                      value: _selectedGender,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedGender = newValue!;
                        });
                      },
                      items: <String>['', 'Laki-laki', 'Perempuan']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Jenis Kelamin',
                        hintText: '',
                        prefixIcon: Icon(Icons.key_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Jenis Kelamin tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Tempat Lahir',
                        hintText: 'Tempat Lahir',
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
                      onTap: () async {
                        await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2015),
                          lastDate: DateTime(2026),
                        ).then((selectedDate) {
                          if (selectedDate != null) {
                            // _dateController.text =
                            //     DateFormat('yyyy-MM-dd').format(selectedDate);
                          }
                        });
                      },
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Tanggal Lahir',
                        hintText: 'Tanggal Lahir',
                        prefixIcon: Icon(Icons.calendar_month),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                      ),
                      keyboardType: TextInputType.datetime,
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
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Email',
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email),
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
                      // controller: _passwordController,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Password',
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      obscureText:
                          _obscureText, // Ini menyembunyikan atau menampilkan password
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextField(
                      // controller: _textController,
                      maxLines: null, // Mengizinkan beberapa baris teks
                      decoration: InputDecoration(
                        labelText: 'Alamat',
                        hintText: 'Masukkan teks di sini...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Jam Mengajar',
                        hintText: 'Jam Mengajar',
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
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Nominal jam',
                        hintText: 'Nominal jam',
                        prefixIcon: Icon(Icons.timer),
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
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Tempat Lahir',
                        hintText: 'Tempat Lahir',
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
                  ],
                ),
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
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 179, 179, 179),
                  blurRadius: 15,
                  offset: Offset(2, 10),
                )
              ],
              color: Color.fromARGB(255, 38, 204, 255),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                "Simpan",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

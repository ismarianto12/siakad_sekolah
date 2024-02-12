import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Siswa extends StatefulWidget {
  const Siswa({super.key});

  @override
  State<Siswa> createState() => _SiswaState();
}

class _SiswaState extends State<Siswa> {
  final TextEditingController _controller = TextEditingController();
  bool isAscending = true;
  final List<String> names = [
    'John',
    'Jane',
    'Doe',
    'Alice',
    'Bob',
    'Charlie',
    'John',
    'Jane',
    'Doe',
    'Alice',
    'Bob',
    'Charlie'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Siswa"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Cari Siswa',
                hintText: 'Masukkan nama Anda',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.search),
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
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.70,
                  height: MediaQuery.sizeOf(context).width * 0.10,
                  decoration: BoxDecoration(
                    // border: Border
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        isAscending
                            ? Icons.filter_list_rounded
                            : Icons.filter_alt_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            // Toggle antara ascending dan descending
                            isAscending = !isAscending;
                          });
                          // Lakukan pengurutan sesuai dengan kebutuhan Anda
                          if (isAscending) {
                            // Lakukan pengurutan ascending
                            print('Pengurutan Ascending');
                          } else {
                            // Lakukan pengurutan descending
                            print('Pengurutan Descending');
                          }
                        },
                        child: Text(
                          isAscending ? 'Urut Asc' : 'Urut Desc',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Filter Data',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 125, 124, 124),
                      fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text(names[index]),
                      onTap: () {
                        final snackBar = SnackBar(
                          content: Text(names[index]),
                          duration: Duration(seconds: 3),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              print('Close...');
                            },
                          ),
                        );

                        // Find the nearest Scaffold in the widget tree
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}

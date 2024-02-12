import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
  late FocusNode searchFocusNode;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredData[index]),
                  // Add any additional details or actions here
                );
              },
            ),
          ),
        ],
      ),
    );
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

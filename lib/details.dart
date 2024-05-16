import 'package:flutter/material.dart';
import 'package:task/model/data/item.dart';

class DetailsPage extends StatefulWidget {
  final Item item; 
  const DetailsPage({super.key, required this.item});

  @override
  // ignore: library_private_types_in_public_api
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late List<Item> filteredItems;
  String searchText = '';

  @override
  void initState() {
    super.initState();
    filteredItems = [widget.item]; 
  }

  void filterItems(String query) {
    setState(() {
      searchText = query;
      filteredItems = [widget.item]; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/BG.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: filterItems,
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: const TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.grey[800],
                        prefixIcon: const Icon(Icons.search, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        searchText = '';
                        filteredItems = [widget.item];
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text('Clear', style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (searchText.isNotEmpty)
              DataTable(
                columns: const [
                  DataColumn(label: Text('Barcode')),
                  DataColumn(label: Text('Location')),
                  DataColumn(label: Text('Branch')),
                  DataColumn(label: Text('Status')),
                ],
                rows: filteredItems.map((item) {
                  return DataRow(
                    cells: <DataCell>[
                      DataCell(Text(item.barcode ?? '')),
                      DataCell(Text(item.location ?? '')),
                      DataCell(Text(item.branch ?? '')),
                      DataCell(Text(item.status ?? '')),
                    ],
                  );
                }).toList(),
              ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
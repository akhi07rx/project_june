import 'package:flutter/material.dart';
import 'package:project_june1/class%20work/storage%20in%20flutter/shared%20preferences/sqfite%20crud/sqfiteoperations.dart';

class SqfliteHome extends StatefulWidget {
  const SqfliteHome({super.key});

  @override
  State<SqfliteHome> createState() => _SqfliteHomeState();
}

class _SqfliteHomeState extends State<SqfliteHome> {
  var isLoading = true;

  // to read all the values from sqflite db
  List<Map<String, dynamic>> contacts = [];

  @override
  void initState() {
    loadUI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(),
                );
              }),
      floatingActionButton: FloatingActionButton(
        // creating a new data so the id will be null
        onPressed: () => showsheet(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final name_cntl = TextEditingController();
  final phn_cntl = TextEditingController();

  void showsheet(int? id) async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              children: [
                TextField(
                  controller: name_cntl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: phn_cntl,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Phone Number"),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await CreateContacts();
                      }
                      if (id != null) {
                        //await UpdateContacts();
                      }
                    },
                    child:
                        Text(id == null ? "Create Contact" : "Update contact"))
              ],
            ),
          );
        });
  }

//to add new data or contacts to sqflite db
  Future<void> CreateContacts() async {
    await SQLHelper.create_contact(name_cntl.text, phn_cntl.text);
  }
}

void loadUI() async {
  final data = await SQLHelper.readContacts();
  setState(() {
    contacts = data;
    isLoading = false;
  });
}
}

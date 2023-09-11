import 'package:flutter/material.dart';
import 'package:project_june1/class%20work/flutter/bottomsheett.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),
      body: isLoading
          ? Center(
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
        onPressed: () =>showSheet(null) {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  const SharedHome({super.key});

  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  late SharedPreferences preferences;
  late String username;

  @override
  Void initState() {
    fetchData(); // When the second page loads this method will execute
    super.initState();
  }


  void fetchData() async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('uname')!; // fetch the value from shared preference
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  };
}

import 'package:flutter/material.dart';
import 'package:project_june1/class%20work/storage%20in%20flutter/simpl_login%20using%20pref/shared_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginShared extends StatefulWidget {
  const LoginShared({super.key});

  @override
  State<LoginShared> createState() => _LoginSharedState();
}

class _LoginSharedState extends State<LoginShared> {
  final email = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
              controller: email,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
              controller: pwd,
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                preferences = await SharedPreferences.getInstance();
                String username = email.text;
                String password = pwd.text;
                if (username != "" && password != "") {
                  preferences.setString('uname', username);
                  preferences.setString('pword', password);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SharedHome()));
                }
                email.text = "";
                pwd.text = "";
              },
              child: const Text("LOGIN"))
        ]),
      ),
    );
  }
}

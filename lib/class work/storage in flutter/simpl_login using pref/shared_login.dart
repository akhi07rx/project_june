import 'package:flutter/material.dart';

class LoginShared extends StatefulWidget {
  const LoginShared({super.key});

  @override
  State<LoginShared> createState() => _LoginSharedState();
}

class _LoginSharedState extends State<LoginShared> {
  final email = TextEditingController();
  final pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
      ),
      body: Center(
        child: Column(children: [
          TextField(),
          TextField(),
          ElevatedButton(onPressed: onPressed, child: Text("LOGIN"))
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RegistrationUI(),
  ));
}

class RegistrationUI extends StatefulWidget {
  const RegistrationUI({super.key});

  @override
  State<RegistrationUI> createState() => _RegistrationUIState();
}

class _RegistrationUIState extends State<RegistrationUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100, right: 100, bottom: 100),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email ID",
                      prefixIcon: Icon(Icons.contact_mail_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (username) {
                    if (username!.isEmpty || !username.contains("@")) {
                      return "Fields are empty or Invalid";
                    } else {
                      return null;
                    }
                  }),
            ),
          ],
        )),
      ),
    );
  }
}

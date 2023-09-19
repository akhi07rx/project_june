import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_june/storages%20in%20flutter/sqflite%20example/sqlhelper.dart';
import 'LoginUi.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var formkey = GlobalKey<FormState>();
  var uname = TextEditingController();
  var uemail = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();

  bool passvisibility1 = true;
  bool passvisibility2 = true;

  void newuser(String name, String email, String password) async {
    var id = await SQLHelper1.newuser(name, email, password);
    if (id != null) {
      Navigator.pushReplacement(
          (context), MaterialPageRoute(builder: (context) => Login()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Not Success')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formkey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 100, right: 100, top: 100),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(
                  "Create an Account, It's free",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: uname,
                  decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: uemail,
                    decoration: InputDecoration(
                        hintText: "Email ID",
                        prefixIcon: Icon(Icons.contact_mail_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (username) {
                      if (username!.isEmpty ||
                          !username.contains("@") ||
                          !username.contains(".")) {
                        return "Fields are empty or Invalid";
                      } else {
                        return null;
                      }
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: pass,
                  obscuringCharacter: "*",
                  obscureText: passvisibility1,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passvisibility1 == true) {
                                passvisibility1 = false;
                              } else {
                                passvisibility1 = true;
                              }
                            });
                          },
                          icon: Icon(passvisibility1 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (pass1) {
                    if (pass1!.isEmpty || pass1.length < 6) {
                      return "Fields are empty or Password length must be greaterthan 6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: cpass,
                  obscuringCharacter: "*",
                  obscureText: passvisibility2,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passvisibility2 == true) {
                                passvisibility2 = false;
                              } else {
                                passvisibility2 = true;
                              }
                            });
                          },
                          icon: Icon(passvisibility2 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "Conform Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (pass2) {
                    if (pass2!.isEmpty || pass2.length < 6) {
                      return "Password length must be greater than 6";
                    } else if (pass.text != cpass.text) {
                      return "Password not matching";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      } else {
                        Fluttertoast.showToast(
                            msg: "Invalid Username or Password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.blue,
                            textColor: Colors.black,
                            fontSize: 16.0);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      minimumSize: Size(350, 50),
                    ),
                    child: const Text("Sign UP")),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: const Text("Already have an account ? Login"))
            ],
          )),
    );
  }
}

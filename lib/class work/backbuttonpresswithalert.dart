import 'package:flutter/material.dart';

class ExitAppAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      Future<bool> showAlert() async{
    return await showDialog(context: context, builder: builder);
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Exit From App"),
          ),
          body: Center(
            child: Text("Press Back Button to Exit"),
          ),
        )),
  }


  }
}

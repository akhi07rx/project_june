import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExitAppAlert(),
  ));
}

class ExitAppAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> ShowAlert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Exit'),
              content: Text('Do you want to exit'),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text('Yes')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text('No')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text('Cancel'))
              ],
            );
          });
    }

    return WillPopScope(
        onWillPop: ShowAlert,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Exit From App'),
          ),
          body: Center(
            child: Text('Press Back button to Exit'),
          ),
        ));
  }
}

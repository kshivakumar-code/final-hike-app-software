import 'package:hike_latest/main.dart';
import 'package:hike_latest/pages/login_page.dart';
import 'package:hike_latest/pages/profile_loader.dart';
import 'package:flutter/material.dart';

class enter_profile_page extends StatelessWidget {
  TextEditingController fn = TextEditingController();
  TextEditingController ln = TextEditingController();
  TextEditingController ml = TextEditingController();
  static const String _title = 'New to Hike !\nEnter Profile details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          toolbarHeight: 100,
          backgroundColor: Color(0xF73A2DCD),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      '',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
// first name
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: fn,
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                ),
// last name
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: ln,
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                ),
//Email details
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: ml,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                ),
                TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.blue.withOpacity(0.04);
                          }
                          if (states.contains(MaterialState.focused) ||
                              states.contains(MaterialState.pressed)) {
                            return Color.fromARGB(255, 0, 144, 31)
                                .withOpacity(0.12);
                          }
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    onPressed: () {
                      if (ln.text.isEmpty == true ||
                          fn.text.isEmpty == true ||
                          ml.text.isEmpty == true) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Invalid Entry'),
                            content: const Text('Please fill all details'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => main_page(index: 1)),
                            (route) => false);
                      }
                    },
                    child: const Text('SAVE'))
              ],
            )));
  }
}

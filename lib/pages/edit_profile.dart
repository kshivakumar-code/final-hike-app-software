import 'package:hike_latest/pages/profile.dart';
import 'package:flutter/material.dart';

class edit_page extends StatelessWidget {
  String firstname;
  String lastname;
  String Mail;
  edit_page({
    Key? key,
    required this.firstname,
    required this.lastname,
    required this.Mail,
  }) : super(key: key);
  TextEditingController fn = TextEditingController();
  TextEditingController ln = TextEditingController();
  TextEditingController ml = TextEditingController();
  static const String _title = 'Edit Profile';
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
// previous first name
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
                  child: Text('Previous First Name : $firstname'),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: fn,
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                ),
// previous last name
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: EdgeInsets.fromLTRB(10, 10, 5, 0),
                  child: Text('Previous Last Name : $lastname'),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: ln,
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                ),
// Last Email details
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: EdgeInsets.fromLTRB(10, 10, 5, 0),
                  child: Text('Previous Email : $Mail'),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                    ),
                  ),
                ),
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
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('SAVE'))
              ],
            )));
  }
}

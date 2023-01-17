import 'package:hike_latest/pages/login_page.dart';
import 'package:hike_latest/pages/profile.dart';
import 'package:flutter/material.dart';

class profile_load extends StatefulWidget {
  int p;
  profile_load({Key? key, required this.p}) : super(key: key);

  @override
  State<profile_load> createState() => _profile_loadState();
}

class _profile_loadState extends State<profile_load> {
  @override
  Widget build(BuildContext context) {
    if (super.widget.p == 0) {
      return login_page();
    }
    return profile_page(
        firstname: 'Pramodh',
        Lastname: 'Podety',
        mail: 'pramodhpodetymark@gmail.com');
  }
}

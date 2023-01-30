import 'package:hike_latest/pages/service_card.dart';
import 'package:flutter/material.dart';

class bus_times extends StatefulWidget {
  String start;
  String end;
  bus_times({Key? key, required this.start, required this.end})
      : super(key: key);
  @override
  State<bus_times> createState() => _bus_timesState();
}

class _bus_timesState extends State<bus_times> {
  List<service> s = [];
  @override
  Widget build(BuildContext context) {
    s = get_bus_data(widget.start, widget.end);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          s[0].start.toString() + " -> " + s[0].end.toString(),
          style: TextStyle(
              letterSpacing: 2.0,
              fontSize: 20.0,
              shadows: <Shadow>[
                Shadow(
                  blurRadius: 2.0,
                  offset: const Offset(0.0, 1.5),
                )
              ],
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xF73A2DCD),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: s.map((e) => bus_card(s: e)).toList(),
        ),
      ),
    );
  }
}

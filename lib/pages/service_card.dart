import 'dart:developer';
import 'dart:ffi';

import 'package:hike_latest/pages/buses_page.dart';
import 'package:hike_latest/pages/order_summary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class service {
  String? BusId;
  String? start;
  String? end;
  String? start_time;
  String? end_time;
  service({this.BusId, this.start, this.end, this.start_time, this.end_time});
}

// ignore: non_constant_identifier_names
// Get details of buses available
List<service> get_bus_data(String start, String end) {
  List<service> s = [];
  for (int i = 0; i < 7; i++) {
    s.add(service(
        BusId: '123' + i.toString(),
        start: start,
        end: end,
        start_time: '12:3' + i.toString(),
        end_time: '13:3' + (i + 5).toString()));
  }
  return s;
}

class bus_card extends StatefulWidget {
  service s;
  bus_card({Key? key, required this.s}) : super(key: key);

  @override
  State<bus_card> createState() => _bus_cardState();
}

class _bus_cardState extends State<bus_card> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Bus No - " + widget.s.BusId.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.s.start.toString(),
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    widget.s.start_time.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('---1 hr 5 mins---')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.s.end.toString(),
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    widget.s.end_time.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
// boxes data
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '10',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1, color: Colors.green)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '20',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1, color: Colors.red)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => order_summary(s: widget.s)));
                  },
                  child: Text(
                    '30',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1, color: Colors.green)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '40',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1, color: Colors.red)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '50',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1, color: Colors.red)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*Widget buscard(service s) {
  return Card(
    elevation: 5,
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Bus No - " + s.BusId.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.start.toString(),
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  s.start_time.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text('---1 hr 5 mins---')),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.s.end.toString(),
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  widget.s.end_time.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
// boxes data
        Row(
          children: [
            SizedBox(width: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '10',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(width: 1, color: Colors.green)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '20',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(width: 1, color: Colors.red)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)));
                },
                child: Text(
                  '30',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(width: 1, color: Colors.green)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '40',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(width: 1, color: Colors.red)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '50',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(width: 1, color: Colors.red)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}*/

import 'package:flutter/material.dart';
import 'package:pigeon1/widget/devices/devices.dart';
import 'package:pigeon1/widget/home/greeting.dart';
import 'package:pigeon1/widget/home/outofusage.dart';
import 'package:pigeon1/widget/home/penggunaan.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.of(context).size.width;
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              greeting(),
              SizedBox(
                height: 20,
              ),
              penggunaan(width),
              SizedBox(
                height: 20,
              ),
              outOfUsage(width),
              SizedBox(
                height: 20,
              ),
              devices(width),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

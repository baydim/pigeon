import 'package:flutter/material.dart';
import '../shadow.dart';

Widget outOfUsage(double width) {
  return Container(
    padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
    width: width,
    decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          boxShadow,
        ]),
    child: Align(
      alignment: Alignment.center,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SizedBox(
            width: width / 1.8,
            child: Text(
              "Tv mu tidak digunakan, matikan segera biar hemat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 1.4,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            width: 70,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  boxShadow,
                ]),
            child: Center(
              child: Text(
                "Matikan",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';

import '../textyle.dart';
import '../shadow.dart';

Widget penggunaan(double width) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Penggunaan",
              style: txt15bs,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  boxShadow,
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.date_range_rounded,
                    size: 20,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "6 Apr 2021",
                    style: txt12b07s,
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              boxShadow,
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.cable_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hari ini",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "28.6 " + "kWh",
                        style: txt15bs,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 1,
                height: width / 10,
                color: Colors.black.withOpacity(0.2),
              ),
              SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.bolt_rounded,
                    color: Colors.pinkAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bulan ini",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "28.6 " + "kWh",
                        style: txt15bs,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

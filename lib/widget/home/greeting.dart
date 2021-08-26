import 'package:flutter/material.dart';
import 'package:pigeon1/widget/shadow.dart';
import 'package:pigeon1/widget/textyle.dart';

Widget greeting() {
  return SafeArea(
    child: StreamBuilder(
      stream: Stream.periodic(Duration(hours: 1)).asBroadcastStream(),
      builder: (contex, snap) {
        String ger = "";
        final h = DateTime.now().hour;

        if (h >= 0 && h <= 9) {
          ger = "Pagi";
        }
        if (h >= 10 && h <= 14) {
          ger = "Siang";
        }
        if (h >= 15 && h <= 18) {
          ger = "Sore";
        }
        if (h >= 19 && h <= 24) {
          ger = "Malam";
        }

        return Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Selamat $ger",
                    style: txt15bs,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Kendalikan rumah dengan mudah",
                    style: txt12b07s,
                  )
                ],
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      boxShadow,
                    ]),
                child: Icon(
                  Icons.person_rounded,
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}

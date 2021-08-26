// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pigeon1/controller/devices_controller.dart';
import 'package:pigeon1/widget/customswitch.dart';
import 'package:pigeon1/widget/icon/findIcons.dart';
import 'package:pigeon1/widget/shadow.dart';
import 'package:pigeon1/widget/textyle.dart';

import '../formatings.dart';

class Switchh extends StatefulWidget {
  final int iconn, id;
  final String name;
  final double konsumsi;
  final bool active;
  final DateTime use;

  Switchh({
    required this.id,
    required this.iconn,
    required this.name,
    required this.konsumsi,
    required this.use,
    required this.active,
  });

  @override
  _SwitchhState createState() => _SwitchhState();
}

class _SwitchhState extends State<Switchh> {
  DevicesController control = Get.put(DevicesController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return AnimatedContainer(
      duration: Duration(seconds: 300),
      padding: EdgeInsets.all(15),
      width: width / 2.37,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [widget.active ? boxShadow2 : boxShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                findIcons(icon: widget.iconn),
                color: widget.active ? Colors.blue : Colors.grey,
              ),
              CustomSwitch(
                width: 50,
                heigth: 25,
                value: widget.active,
                onChange: (val) {
                  // var q = control.dataDevices
                  //     .where((element) => element.id == widget.id)
                  //     .first;

                  // q.active = val;
                  // control.update();
                  control.updateActive(
                      active: val, id: widget.id, dateTime: DateTime.now());

                  // print(q.id);
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Get.toNamed('/detail?id=' + widget.id.toString());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Konsumsi " + widget.konsumsi.toString() + " kWh",
                  style: txt12b07s,
                ),
                SizedBox(
                  height: 10,
                ),
                StreamBuilder(
                  stream:
                      Stream.periodic(Duration(seconds: 1)).asBroadcastStream(),
                  builder: (ctx, snap) {
                    var dhms = Formatings.rangeDate(use: widget.use);
                    if (!widget.active)
                      return SizedBox(
                        width: 0,
                        height: 0,
                      );
                    else if (dhms.hour >= 1 && dhms.hour <= 24)
                      return Text(
                        dhms.hour.toString() + " Jam",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      );
                    else if (dhms.hour > 24)
                      return Text(
                        dhms.day.toString() + " Hari",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      );
                    else if (dhms.second < 60)
                      return Text(
                        dhms.second.toString() + " Detik",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      );
                    else
                      return Text(
                        dhms.minutes.toString() + " Menit",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

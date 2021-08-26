import 'package:flutter/material.dart';
import 'package:pigeon1/model/modelUserWifi.dart';
import 'package:pigeon1/widget/shadow.dart';
import 'package:pigeon1/widget/textyle.dart';

class RemoteWifi extends StatefulWidget {
  const RemoteWifi({Key? key}) : super(key: key);

  @override
  _RemoteWifiState createState() => _RemoteWifiState();
}

class _RemoteWifiState extends State<RemoteWifi> {
  TextEditingController txt =
      TextEditingController(text: "QUICK BROWN LAZY DOG");

  List<ModelUserWifi> muw = [
    ModelUserWifi(
      id: 1,
      name: "OPPO A3S",
      mac: "50:29:f5:dr:dx:di",
      ip: "192.168.0.100",
    ),
    ModelUserWifi(
      id: 2,
      name: "LENOVO IDEAPAD 110",
      mac: "50:29:f5:dr:dx:di sjfkjfksfjsfsjfsj",
      ip: "192.168.0.101",
    ),
    ModelUserWifi(
      id: 3,
      name: "IOS 5",
      mac: "50:29:f5:dr:dx:di",
      ip: "192.168.0.102",
    ),
    ModelUserWifi(
      id: 4,
      name: "ROG PHONE",
      mac: "50:29:f5:dr:dx:di",
      ip: "192.168.0.103",
    ),
    ModelUserWifi(
      id: 5,
      name: "LINUX SERVER",
      mac: "50:29:f5:dr:dx:di",
      ip: "192.168.0.104",
    ),
    ModelUserWifi(
      id: 6,
      name: "NGINX",
      mac: "50:29:f5:dr:dx:di",
      ip: "192.168.0.105",
    ),
  ];

  bool ob = true;

  look() {
    setState(() {
      ob ? ob = false : ob = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      padding: EdgeInsets.all(20),
      width: w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          boxShadow,
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: txt12b07s,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: w,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      boxShadow,
                    ]),
                child: TextField(
                  controller: txt,
                  obscureText: ob,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: look,
                      child: Icon(
                        !ob
                            ? Icons.visibility_off_rounded
                            : Icons.visibility_rounded,
                      ),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15, 7, 15, 0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: w,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                Text(
                  "User",
                  style: txt12b07s,
                ),
                Text(
                  muw.length.toString(),
                  style: txt12b07s,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          for (var a in muw)
            Container(
              padding: EdgeInsets.all(15),
              width: w,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  boxShadow,
                ],
              ),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        a.name,
                        style: txt12b07s,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "MAC: " + a.mac,
                        style: txt12b07s,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "IP: " + a.ip,
                        style: txt12b07s,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        muw.removeWhere((element) => element.id == a.id);
                      });
                    },
                    child: Container(
                      width: w / 10,
                      height: w / 10,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            boxShadow,
                          ]),
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}

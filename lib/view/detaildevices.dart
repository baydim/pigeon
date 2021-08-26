import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pigeon1/controller/devices_controller.dart';
import 'package:pigeon1/model/modeldevices.dart';
import 'package:pigeon1/widget/customswitch.dart';
import 'package:pigeon1/widget/devices/switch.dart';
import 'package:pigeon1/widget/devices/tv/remote_tv.dart';
import 'package:pigeon1/widget/devices/wifi/remote_wifi.dart';
import 'package:pigeon1/widget/formatings.dart';
import 'package:pigeon1/widget/icon/findIcons.dart';
import 'package:pigeon1/widget/shadow.dart';
import 'package:pigeon1/widget/textyle.dart';

class DetailDevices extends StatefulWidget {
  const DetailDevices({Key? key}) : super(key: key);

  @override
  _DetailDevicesState createState() => _DetailDevicesState();
}

class _DetailDevicesState extends State<DetailDevices> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return GetBuilder<DevicesController>(
      init: DevicesController(),
      builder: (val) {
        int? id = int.tryParse(Get.parameters['id'].toString());
        var a = val.dataDevices.where((element) => id == element.id).first;

        List<ModelDevices> rec =
            val.dataDevices.where((element) => element.icon == a.icon).toList();

        rec.removeWhere((element) => element.id == a.id);
        // var dhms = Formatings.rangeDate(use: a.use);
        print(id);

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              titleSpacing: 15,
              title: SizedBox(
                width: width,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              boxShadow,
                            ]),
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Text(
                      a.name,
                      style: txt15bs,
                    ),
                    SizedBox(
                      width: 45,
                      height: 45,
                    ),
                  ],
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: width / 4,
                  ),
                  Center(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: width / 2.8,
                      height: width / 2.8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            !a.active
                                ? boxShadow
                                : BoxShadow(
                                    spreadRadius: width / 12,
                                    blurRadius: 15,
                                    color: Colors.blue.withOpacity(0.2),
                                  ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            findIcons(icon: a.icon),
                            size: width / 6,
                            color: a.active ? Colors.blue : Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            a.konsumsi.toString() + " kWh",
                            style: txt12b07s,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: width,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [boxShadow],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        StreamBuilder(
                          stream: Stream.periodic(Duration(seconds: 1))
                              .asBroadcastStream(),
                          builder: (ctx, snap) {
                            var dhms = Formatings.rangeDate(use: a.use);
                            if (!a.active)
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
                        ),
                        CustomSwitch(
                          value: a.active,
                          onChange: (value) {
                            val.updateActive(
                                active: value,
                                id: a.id,
                                dateTime: DateTime.now());
                          },
                          width: 50,
                          heigth: 25,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  if (a.icon == 1)
                    a.active
                        ? remoteTv(width: width, context: context)
                        : SizedBox(
                            width: 0,
                            height: 0,
                          ),
                  if (a.icon == 2)
                    a.active
                        ? RemoteWifi()
                        : SizedBox(
                            width: 0,
                            height: 0,
                          )
                  else
                    SizedBox(
                      width: 0,
                      height: 0,
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 15,
                      runSpacing: 15,
                      children: [
                        for (var b in rec)
                          Switchh(
                            id: b.id,
                            iconn: b.icon,
                            name: b.name,
                            konsumsi: b.konsumsi,
                            use: b.use,
                            active: b.active,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

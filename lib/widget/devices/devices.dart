import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:pigeon1/controller/devices_controller.dart';
import 'package:pigeon1/widget/devices/switch.dart';

import '../textyle.dart';

Widget devices(double width) {
  return GetBuilder<DevicesController>(
    init: DevicesController(),
    builder: (val) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Perangkatku",
              style: txt15bs,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                for (var a in val.dataDevices)
                  Switchh(
                    id: a.id,
                    iconn: a.icon,
                    name: a.name,
                    konsumsi: a.konsumsi,
                    use: a.use,
                    active: a.active,
                  ),
              ],
            ),
          ),
        ],
      );
    },
  );
}

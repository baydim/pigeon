import 'package:get/get.dart';
import 'package:pigeon1/model/modeldevices.dart';

class DevicesController extends GetxController {
  List<ModelDevices> dataDevices = [
    ModelDevices(
      id: 1,
      icon: 1,
      name: "Televisi",
      konsumsi: 45.5,
      use: DateTime(2021, 8, 26, 12),
      active: false,
    ),
    ModelDevices(
      id: 2,
      icon: 2,
      name: "Wifi",
      konsumsi: 15.5,
      use: DateTime(2021, 1, 1, 18),
      active: true,
    ),
    ModelDevices(
      id: 3,
      icon: 3,
      name: "Pompa air",
      konsumsi: 64.2,
      use: DateTime(2021, 8, 26, 4),
      active: false,
    ),
    ModelDevices(
      id: 4,
      icon: 4,
      name: "Lampu depan",
      konsumsi: 8,
      use: DateTime(2021, 8, 25, 15),
      active: true,
    ),
    ModelDevices(
      id: 5,
      icon: 4,
      name: "Lampu ruang tamu",
      konsumsi: 8,
      use: DateTime(2021, 8, 25, 15),
      active: true,
    ),
    ModelDevices(
      id: 6,
      icon: 4,
      name: "Lampu ruang keluarga",
      konsumsi: 8,
      use: DateTime(2021, 8, 25, 15),
      active: true,
    ),
    ModelDevices(
      id: 7,
      icon: 4,
      name: "Lampu dapur",
      konsumsi: 8,
      use: DateTime(2021, 8, 25, 15),
      active: true,
    ),
    ModelDevices(
      id: 8,
      icon: 4,
      name: "Lampu kamar mandi",
      konsumsi: 8,
      use: DateTime(2021, 8, 25, 15),
      active: true,
    ),
  ];

  updateActive(
      {required bool active, required int id, required DateTime dateTime}) {
    var q = dataDevices.where((element) => id == element.id).first;
    q.active = active;
    !active ? q.use = DateTime(0, 0, 0, 0, 0) : q.use = dateTime;
    update();

    print(q.id);
    print(q.active);
  }
}

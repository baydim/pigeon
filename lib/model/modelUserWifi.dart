// import 'dart:convert';

// ModelDevices modelDevicesFromMap(String? str) =>
//     ModelDevices.fromMap(json.decode(str! ));

// String modelDevicesToMap(ModelDevices data) => json.encode(data.toMap());

class ModelUserWifi {
  ModelUserWifi({
    required this.id,
    required this.name,
    required this.mac,
    required this.ip,
  });
  int id;
  String name, mac, ip;

  factory ModelUserWifi.fromMap(Map<String, dynamic> json) => ModelUserWifi(
        id: json["id"],
        name: json["name"],
        mac: json["mac"],
        ip: json["ip"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "mac": mac,
        "ip": ip,
      };
}

// import 'dart:convert';

// ModelDevices modelDevicesFromMap(String? str) =>
//     ModelDevices.fromMap(json.decode(str! ));

// String modelDevicesToMap(ModelDevices data) => json.encode(data.toMap());

class ModelDevices {
  ModelDevices({
    required this.id,
    required this.icon,
    required this.name,
    required this.konsumsi,
    required this.use,
    required this.active,
  });
  int icon, id;
  String name;
  double konsumsi;
  DateTime use;
  bool active;

  factory ModelDevices.fromMap(Map<String, dynamic> json) => ModelDevices(
        id: json["id"],
        icon: json["icon"],
        name: json["name"],
        konsumsi: json["konsumsi"].toDouble(),
        use: json["use"],
        active: json["active"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "icon": icon,
        "name": name,
        "konsumsi": konsumsi,
        "use": use,
        "active": active,
      };
}

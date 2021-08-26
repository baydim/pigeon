// import 'dart:convert';

// ModelDevices modelDevicesFromMap(String? str) =>
//     ModelDevices.fromMap(json.decode(str! ));

// String modelDevicesToMap(ModelDevices data) => json.encode(data.toMap());

class ModelRangeDate {
  ModelRangeDate({
    required this.day,
    required this.hour,
    required this.minutes,
    required this.second,
  });
  int day, hour, minutes, second;

  factory ModelRangeDate.fromMap(Map<String, dynamic> json) => ModelRangeDate(
        day: json["day"],
        hour: json["hour"],
        minutes: json["minutes"],
        second: json["second"],
      );

  Map<String, dynamic> toMap() => {
        "day": day,
        "hour": hour,
        "minutes": minutes,
        "second": second,
      };
}

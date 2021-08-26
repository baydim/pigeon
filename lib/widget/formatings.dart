import 'package:pigeon1/model/modelRangeDate.dart';

class Formatings {
  static ModelRangeDate rangeDate({required DateTime use}) {
    DateTime a = DateTime.now();
    var b = a.difference(use);

    return ModelRangeDate(
        day: b.inDays,
        hour: b.inHours,
        minutes: b.inMinutes,
        second: b.inSeconds);
  }
}

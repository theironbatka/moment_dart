import 'package:moment_dart/moment_dart.dart';

/// This mixin provides
///
/// * [chineseNumbers] - final property with chinese numbers
mixin ChineseNumbers on MomentLocalization {
  final Map<int, String> chineseNumbers = {
    1: "一",
    2: "二",
    3: "三",
    4: "四",
    5: "五",
    6: "六",
    7: "七",
    8: "八",
    9: "九",
    10: "十",
    11: "十一",
    12: "十二",
  };
}

// ignore_for_file: file_names
// Author: Batmend Ganbaatar (https://github.com/sadespresso)

import 'package:moment_dart/src/extensions.dart';
import 'package:moment_dart/src/localization.dart';
import 'package:moment_dart/src/localizations/mixins/complex_calendar.dart';
import 'package:moment_dart/src/localizations/mixins/month_names.dart';
import 'package:moment_dart/src/localizations/mixins/simple_duration.dart';
import 'package:moment_dart/src/localizations/mixins/simple_relative.dart';
import 'package:moment_dart/src/localizations/mixins/simple_units.dart';
import 'package:moment_dart/src/localizations/mixins/weekday_shortforms.dart';
import 'package:moment_dart/src/localizations/mixins/zn_CN/ordinal_number.dart';
import 'package:moment_dart/src/types.dart';

import 'mixins/zn_CN/chinese_numbers.dart';

/// Language: Italian
/// Country: Italy
class LocalizationZnCn extends MomentLocalization
    with
        MonthNames,
        WeekdayShortForms,
        ChineseNumbers,
        ZnCnOrdinal,
        SimpleUnits,
        SimpleRelative,
        SimpleDuration,
        ComplexCalendar {
  static LocalizationZnCn? _instance;

  LocalizationZnCn._internal() : super();

  factory LocalizationZnCn() {
    _instance ??= LocalizationZnCn._internal();

    return _instance!;
  }

  @override
  String get endonym => "中文";

  @override
  String get languageCode => "zn";

  @override
  String get countryCode => "CN";

  @override
  String get languageNameInEnglish => "Chinese (China)";

  @override
  String relativePast(String unit) => "$unit前";
  @override
  String relativeFuture(String unit) => "$unit后";

  @override
  Map<int, String> get monthNames => chineseNumbers.map(
        (key, value) => MapEntry(key, "$value月"),
      );

  @override
  Map<int, String> get monthNamesShort => Map.fromEntries(
        chineseNumbers.keys.map((i) => MapEntry<int, String>(i, "$i月")),
      );

  @override
  Map<int, String> get weekdayName => {
        1: "星期一",
        2: "星期二",
        3: "星期三",
        4: "星期四",
        5: "星期五",
        6: "星期六",
        7: "星期日",
      };

  @override
  Map<int, String> get weekdayNameShort => {
        1: "周一",
        2: "周二",
        3: "周三",
        4: "周四",
        5: "周五",
        6: "周六",
        7: "周日",
      };

  @override
  Map<int, String> get weekdayNameMin => {
        1: "一",
        2: "二",
        3: "三",
        4: "四",
        5: "五",
        6: "六",
        7: "日",
      };

  // Got it from here https://github.com/moment/moment/blob/develop/locale/zh-cn.js
  // I don't know any chinese ☹️
  String _meridiem(DateTime dateTime) {
    final int hm = dateTime.hour * 100 + dateTime.minute;
    if (hm < 600) {
      return '凌晨';
    } else if (hm < 900) {
      return '早上';
    } else if (hm < 1130) {
      return '上午';
    } else if (hm < 1230) {
      return '中午';
    } else if (hm < 1800) {
      return '下午';
    }
    return '晚上';
  }

  @override
  FormatSetOptional overrideFormatters() {
    return {
      // From [MonthNames] mixin
      ...formattersForMonthNames,
      // From [WeekdayShortForms] mixin
      ...formattersForWeekdayShortForms,
      // From [ZnCnOrdinal] mixin
      ...formattersWithZnCnOrdinal,
      // Overrides
      FormatterToken.A: _meridiem,
      FormatterToken.a: _meridiem,
      FormatterToken.Q: (DateTime dateTime) =>
          "${chineseNumbers[dateTime.quarter]}",
      // Localization aware formats
      FormatterToken.L: (dateTime) => reformat(dateTime, "YYYY/MM/DD"),
      FormatterToken.l: (dateTime) => reformat(dateTime, "YYYY/M/D"),
      FormatterToken.LL: (dateTime) => reformat(dateTime, "YYYY年M月D日"),
      FormatterToken.ll: (dateTime) => reformat(dateTime, "YYYY年M月D日"),
      FormatterToken.LLL: (dateTime) => reformat(dateTime, "YYYY年M月D日Ah点mm分"),
      FormatterToken.lll: (dateTime) => reformat(dateTime, "YYYY年M月D日 HH:mm"),
      FormatterToken.LLLL: (dateTime) =>
          reformat(dateTime, "YYYY年M月D日ddddAh点mm分"),
      FormatterToken.llll: (dateTime) =>
          reformat(dateTime, "YYYY年M月D日dddd HH:mm"),
      FormatterToken.LT: (dateTime) => reformat(dateTime, "HH:mm"),
      FormatterToken.LTS: (dateTime) => reformat(dateTime, "HH:mm:ss"),
    };
  }

  @override
  int get weekStart => DateTime.monday;

  @override
  Map<DurationInterval, UnitString> get units => {
        DurationInterval.lessThanASecond: UnitString.single("几秒"),
        DurationInterval.aSecond: UnitString.single("1 秒"),
        DurationInterval.seconds: UnitString.single("$srDelta 秒"),
        DurationInterval.aMinute: UnitString.single("1 分钟"),
        DurationInterval.minutes: UnitString.single("$srDelta 分钟"),
        DurationInterval.anHour: UnitString.single("1 小时"),
        DurationInterval.hours: UnitString.single("$srDelta 小时"),
        DurationInterval.aDay: UnitString.single("1 天"),
        DurationInterval.days: UnitString.single("$srDelta 天"),
        DurationInterval.aWeek: UnitString.single("1 周"),
        DurationInterval.weeks: UnitString.single("$srDelta 周"),
        DurationInterval.aMonth: UnitString.single("1 个月"),
        DurationInterval.months: UnitString.single("$srDelta 个月"),
        DurationInterval.aYear: UnitString.single("1 年"),
        DurationInterval.years: UnitString.single("$srDelta 年"),
      };

  @override
  ComplexCalenderLocalizationData get complexCalendarData =>
      ComplexCalenderLocalizationData(
        keywords: ComplexCalenderLocalizationKeywords(
          at: (DateTime dateTime, String dateString, String timeString) =>
              "$dateString $timeString",
          lastWeekday: (DateTime dateTime) {
            final bool isSameWeek =
                DateTime.now().isSameLocalWeekAs(dateTime, weekStart);

            if (isSameWeek) {
              return "本${reformat(dateTime, "dddd")}";
            } else {
              return "上${reformat(dateTime, "dddd")}";
            }
          },
          nextWeekday: (DateTime dateTime) {
            final bool isSameWeek =
                DateTime.now().isSameLocalWeekAs(dateTime, weekStart);

            if (isSameWeek) {
              return "本${reformat(dateTime, "dddd")}";
            } else {
              return "下${reformat(dateTime, "dddd")}";
            }
          },
        ),
        relativeDayNames: {
          -2: "前天",
          -1: "昨天",
          0: "今天",
          1: "明天",
          2: "后天",
        },
      );
}

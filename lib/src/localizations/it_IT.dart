// ignore_for_file: file_names

import 'package:moment_dart/src/moment_localization.dart';
import 'package:moment_dart/src/localizations/mixins/complex_calendar.dart';
import 'package:moment_dart/src/localizations/mixins/month_names.dart';
import 'package:moment_dart/src/localizations/mixins/ordinal_numbers.dart';
import 'package:moment_dart/src/localizations/mixins/simple_duration.dart';
import 'package:moment_dart/src/localizations/mixins/simple_relative.dart';
import 'package:moment_dart/src/localizations/mixins/simple_units.dart';

/// Language: Italian
/// Country: Italy
class LocalizationItIt extends MomentLocalization
    with
        MonthNames,
        Ordinal,
        SimpleUnits,
        SimpleRelative,
        SimpleDuration,
        ComplexCalendar {
  LocalizationItIt() : super();

  @override
  String get endonym => "Italiano";

  @override
  String get languageCode => "it";

  @override
  String get countryCode => "IT";

  @override
  String get languageNameInEnglish => "Italian";

  @override
  String relativePast(String unit) => "$unit fa";
  @override
  String relativeFuture(String unit) => "tra $unit";

  @override
  Map<int, String> get monthNames => {
        1: "gennaio",
        2: "febbraio",
        3: "marzo",
        4: "aprile",
        5: "maggio",
        6: "giugno",
        7: "luglio",
        8: "agosto",
        9: "settembre",
        10: "ottobre",
        11: "novembre",
        12: "dicembre",
      };

  @override
  Map<int, String> get monthNamesShort =>
      monthNames.map((key, value) => MapEntry(key, value.substring(0, 3)));

  @override
  Map<int, String> get weekdayName => {
        1: "lunedì",
        2: "martedì",
        3: "mercoledì",
        4: "giovedì",
        5: "venerdì",
        6: "sabato",
        7: "domenica",
      };

  @override
  Map<FormatterToken, FormatterTokenFn?> overrideFormatters() {
    return {
      // From [EnglishLikeOrdinal] mixin
      ...formattersWithOrdinal,
      // From [MonthNames] mixin
      ...formattersForMonthNames,
      // Localization aware formats
      FormatterToken.L: (dateTime) => reformat(dateTime, "DD/MM/YYYY"),
      FormatterToken.l: (dateTime) => reformat(dateTime, "D/M/YYYY"),
      FormatterToken.LL: (dateTime) => reformat(dateTime, "D MMMM YYYY"),
      FormatterToken.ll: (dateTime) => reformat(dateTime, "D MMM YYYY"),
      FormatterToken.LLL: (dateTime) => reformat(dateTime, "D MMMM YYYY HH:mm"),
      FormatterToken.lll: (dateTime) => reformat(dateTime, "D MMM YYYY HH:mm"),
      FormatterToken.LLLL: (dateTime) =>
          reformat(dateTime, "dddd D MMMM YYYY HH:mm"),
      FormatterToken.llll: (dateTime) =>
          reformat(dateTime, "ddd D MMM YYYY HH:mm"),
      FormatterToken.LT: (dateTime) => reformat(dateTime, "HH:mm"),
      FormatterToken.LTS: (dateTime) => reformat(dateTime, "HH:mm:ss"),
    };
  }

  static String last(String weekday) => "Last $weekday";
  static String at(String date, String time) => "$date a' $time";

  static const CalenderLocalizationData calenderLocalizationDataEnUs =
      CalenderLocalizationData(
    relativeDayNames: {
      -1: "Ieri",
      0: "Oggi",
      1: "Domani",
    },
    keywords: CalenderLocalizationKeywords(
      at: at,
      lastWeekday: last,
    ),
  );

  @override
  int get weekStart => DateTime.monday;

  @override
  Map<DurationInterval, UnitString> get units => {
        DurationInterval.fewSeconds: UnitString.withForm(
          "alcuni secondi",
          "alcuni sec",
          "alcuni sec",
        ),
        DurationInterval.aSecond: UnitString.withForm(
          "un secondo",
          "1 sec",
          "1 s",
        ),
        DurationInterval.seconds: UnitString.withForm(
          "$srDelta secondi",
          "$srDelta sec",
          "$srDelta s",
        ),
        DurationInterval.aMinute: UnitString.withForm(
          "un minuto",
          "1 min",
          "1 m",
        ),
        DurationInterval.minutes: UnitString.withForm(
          "$srDelta minuti",
          "$srDelta min",
          "$srDelta m",
        ),
        DurationInterval.anHour: UnitString.withForm(
          "un'ora",
          "1 ora",
          "1 h",
        ),
        DurationInterval.hours: UnitString.withForm(
          "$srDelta ore",
          "$srDelta ore",
          "$srDelta h",
        ),
        DurationInterval.aDay: UnitString.withForm(
          "un giorno",
          "1 giorno",
          "1 g.",
        ),
        DurationInterval.days: UnitString.withForm(
          "$srDelta giorni",
          "$srDelta giorni",
          "$srDelta gg.",
        ),
        DurationInterval.aWeek: UnitString.withForm(
          "una settimana",
          "1 sett.",
          "1 sett.",
        ),
        DurationInterval.weeks: UnitString.withForm(
          "$srDelta settimane",
          "$srDelta sett.",
          "$srDelta sett.",
        ),
        DurationInterval.aMonth: UnitString.withForm(
          "un mese",
          "1 mese",
          "1 ms.",
        ),
        DurationInterval.months: UnitString.withForm(
          "$srDelta mesi",
          "$srDelta mesi",
          "$srDelta ms.",
        ),
        DurationInterval.aYear: UnitString.withForm(
          "un anno",
          "1 anno",
          "1 a.",
        ),
        DurationInterval.years: UnitString.withForm(
          "$srDelta anni",
          "$srDelta anni",
          "$srDelta a.",
        ),
      };

  @override
  String ordinalNumber(int n) => "$nº";

  @override
  ComplexCalenderLocalizationData get complexCalendarData =>
      ComplexCalenderLocalizationData(
        keywords: ComplexCalenderLocalizationKeywords(
          at: (DateTime dateTime, String dateString, String timeString) {
            late final String suffix;

            if (dateTime.hour > 1) {
              suffix = "lle ";
            } else {
              suffix = (dateTime.hour == 0) ? " " : "ll'";
            }

            return "$dateString a$suffix$timeString";
          },
          lastWeekday: (DateTime dateTime) {
            if (dateTime.weekday == DateTime.sunday) {
              return "La scorsa ${reformat(dateTime, "dddd")}";
            }

            return "Lo scorso ${reformat(dateTime, "dddd")}";
          },
          nextWeekday: (DateTime dateTime) => reformat(dateTime, "dddd"),
        ),
        relativeDayNames: {
          -1: "ieri",
          0: "oggi",
          1: "domani",
          // 2: "dopodomani",
        },
      );
}

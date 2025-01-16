import 'package:moment_dart/moment_dart.dart';
import 'package:test/test.dart';

void main() {
  // See MomentLocalization.__relativeThresholds for more info on defined values.
  var now = Moment.now();
  var fewMomentsAhead = now + const Duration(seconds: 44);
  var fewMomentsAgo = now - const Duration(seconds: 44);
  var aMinuteAhead = now + const Duration(seconds: 46);
  var aMinuteAgo = now - const Duration(seconds: 46);
  var fiveMinutesAhead = now + const Duration(minutes: 5);
  var fiveMinutesAgo = now - const Duration(minutes: 5);
  var anHourAhead = now + const Duration(minutes: 46);
  var anHourAgo = now - const Duration(minutes: 46);
  var sixHoursAhead = now + const Duration(hours: 6);
  var sixHoursAgo = now - const Duration(hours: 6);
  var aDayAhead = now + const Duration(hours: 35);
  var aDayAgo = now - const Duration(hours: 35);
  var twoDaysAhead = now + const Duration(days: 2);
  var twoDaysAgo = now - const Duration(days: 2);
  var aMonthAhead = now + const Duration(days: 44);
  var aMonthAgo = now - const Duration(days: 44);
  var fourMonthsAhead = now + const Duration(days: 120);
  var fourMonthsAgo = now - const Duration(days: 120);
  var aYearAhead = now + const Duration(days: 547);
  var aYearAgo = now - const Duration(days: 547);
  var threeYearsAhead = now + const Duration(days: 365 * 3 + 1);
  var threeYearsAgo = now - const Duration(days: 365 * 3 + 1);

  test("de_DE localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.de());

    expect(fewMomentsAhead.from(now), "in ein paar Sekunden");
    expect(fewMomentsAgo.from(now), "vor ein paar Sekunden");
    expect(
        fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "ein paar Sekunden");
    expect(aMinuteAhead.from(now), "in einer Minute");
    expect(aMinuteAgo.from(now), "vor einer Minute");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "eine Minute");
    expect(fiveMinutesAhead.from(now), "in 5 Minuten");
    expect(fiveMinutesAgo.from(now), "vor 5 Minuten");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 Minuten");
    expect(anHourAhead.from(now), "in einer Stunde");
    expect(anHourAgo.from(now), "vor einer Stunde");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "eine Stunde");
    expect(sixHoursAhead.from(now), "in 6 Stunden");
    expect(sixHoursAgo.from(now), "vor 6 Stunden");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 Stunden");
    expect(aDayAhead.from(now), "in einem Tag");
    expect(aDayAgo.from(now), "vor einem Tag");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "ein Tag");
    expect(twoDaysAhead.from(now), "in 2 Tagen");
    expect(twoDaysAgo.from(now), "vor 2 Tagen");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 Tage");
    expect(aMonthAhead.from(now), "in einem Monat");
    expect(aMonthAgo.from(now), "vor einem Monat");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "ein Monat");
    expect(fourMonthsAhead.from(now), "in 4 Monaten");
    expect(fourMonthsAgo.from(now), "vor 4 Monaten");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 Monate");
    expect(aYearAhead.from(now), "in einem Jahr");
    expect(aYearAgo.from(now), "vor einem Jahr");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "ein Jahr");
    expect(threeYearsAhead.from(now), "in 3 Jahren");
    expect(threeYearsAgo.from(now), "vor 3 Jahren");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 Jahre");
  });

  test("it localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.it());

    expect(fewMomentsAhead.from(now), "tra alcuni secondi");
    expect(fewMomentsAgo.from(now), "alcuni secondi fa");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "alcuni secondi");
    expect(aMinuteAhead.from(now), "tra un minuto");
    expect(aMinuteAgo.from(now), "un minuto fa");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "un minuto");
    expect(fiveMinutesAhead.from(now), "tra 5 minuti");
    expect(fiveMinutesAgo.from(now), "5 minuti fa");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 minuti");
    expect(anHourAhead.from(now), "tra un'ora");
    expect(anHourAgo.from(now), "un'ora fa");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "un'ora");
    expect(sixHoursAhead.from(now), "tra 6 ore");
    expect(sixHoursAgo.from(now), "6 ore fa");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 ore");
    expect(aDayAhead.from(now), "tra un giorno");
    expect(aDayAgo.from(now), "un giorno fa");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "un giorno");
    expect(twoDaysAhead.from(now), "tra 2 giorni");
    expect(twoDaysAgo.from(now), "2 giorni fa");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 giorni");
    expect(aMonthAhead.from(now), "tra un mese");
    expect(aMonthAgo.from(now), "un mese fa");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "un mese");
    expect(fourMonthsAhead.from(now), "tra 4 mesi");
    expect(fourMonthsAgo.from(now), "4 mesi fa");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 mesi");
    expect(aYearAhead.from(now), "tra un anno");
    expect(aYearAgo.from(now), "un anno fa");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "un anno");
    expect(threeYearsAhead.from(now), "tra 3 anni");
    expect(threeYearsAgo.from(now), "3 anni fa");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 anni");
  });

  test("fr localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.fr());

    expect(fewMomentsAhead.from(now), "dans quelques secondes");
    expect(fewMomentsAgo.from(now), "il y a quelques secondes");
    expect(
        fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "quelques secondes");
    expect(aMinuteAhead.from(now), "dans une minute");
    expect(aMinuteAgo.from(now), "il y a une minute");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "une minute");
    expect(fiveMinutesAhead.from(now), "dans 5 minutes");
    expect(fiveMinutesAgo.from(now), "il y a 5 minutes");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 minutes");
    expect(anHourAhead.from(now), "dans une heure");
    expect(anHourAgo.from(now), "il y a une heure");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "une heure");
    expect(sixHoursAhead.from(now), "dans 6 heures");
    expect(sixHoursAgo.from(now), "il y a 6 heures");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 heures");
    expect(aDayAhead.from(now), "dans un jour");
    expect(aDayAgo.from(now), "il y a un jour");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "un jour");
    expect(twoDaysAhead.from(now), "dans 2 jours");
    expect(twoDaysAgo.from(now), "il y a 2 jours");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 jours");
    expect(aMonthAhead.from(now), "dans un mois");
    expect(aMonthAgo.from(now), "il y a un mois");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "un mois");
    expect(fourMonthsAhead.from(now), "dans 4 mois");
    expect(fourMonthsAgo.from(now), "il y a 4 mois");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 mois");
    expect(aYearAhead.from(now), "dans un an");
    expect(aYearAgo.from(now), "il y a un an");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "un an");
    expect(threeYearsAhead.from(now), "dans 3 ans");
    expect(threeYearsAgo.from(now), "il y a 3 ans");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 ans");
  });

  test("es localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.es());

    expect(fewMomentsAhead.from(now), "en unos segundos");
    expect(fewMomentsAgo.from(now), "hace unos segundos");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "unos segundos");
    expect(aMinuteAhead.from(now), "en un minuto");
    expect(aMinuteAgo.from(now), "hace un minuto");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "un minuto");
    expect(fiveMinutesAhead.from(now), "en 5 minutos");
    expect(fiveMinutesAgo.from(now), "hace 5 minutos");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 minutos");
    expect(anHourAhead.from(now), "en un hora");
    expect(anHourAgo.from(now), "hace un hora");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "un hora");
    expect(sixHoursAhead.from(now), "en 6 horas");
    expect(sixHoursAgo.from(now), "hace 6 horas");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 horas");
    expect(aDayAhead.from(now), "en un día");
    expect(aDayAgo.from(now), "hace un día");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "un día");
    expect(twoDaysAhead.from(now), "en 2 días");
    expect(twoDaysAgo.from(now), "hace 2 días");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 días");
    expect(aMonthAhead.from(now), "en un mes");
    expect(aMonthAgo.from(now), "hace un mes");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "un mes");
    expect(fourMonthsAhead.from(now), "en 4 meses");
    expect(fourMonthsAgo.from(now), "hace 4 meses");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 meses");
    expect(aYearAhead.from(now), "en un año");
    expect(aYearAgo.from(now), "hace un año");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "un año");
    expect(threeYearsAhead.from(now), "en 3 años");
    expect(threeYearsAgo.from(now), "hace 3 años");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 años");
  });

  test("pt localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.pt());

    expect(fewMomentsAhead.from(now), "em alguns segundos");
    expect(fewMomentsAgo.from(now), "há alguns segundos");
    expect(
        fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "alguns segundos");
    expect(aMinuteAhead.from(now), "em um minuto");
    expect(aMinuteAgo.from(now), "há um minuto");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "um minuto");
    expect(fiveMinutesAhead.from(now), "em 5 minutos");
    expect(fiveMinutesAgo.from(now), "há 5 minutos");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 minutos");
    expect(anHourAhead.from(now), "em uma hora");
    expect(anHourAgo.from(now), "há uma hora");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "uma hora");
    expect(sixHoursAhead.from(now), "em 6 horas");
    expect(sixHoursAgo.from(now), "há 6 horas");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 horas");
    expect(aDayAhead.from(now), "em um dia");
    expect(aDayAgo.from(now), "há um dia");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "um dia");
    expect(twoDaysAhead.from(now), "em 2 dias");
    expect(twoDaysAgo.from(now), "há 2 dias");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 dias");
    expect(aMonthAhead.from(now), "em um mês");
    expect(aMonthAgo.from(now), "há um mês");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "um mês");
    expect(fourMonthsAhead.from(now), "em 4 mêses");
    expect(fourMonthsAgo.from(now), "há 4 mêses");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 mêses");
    expect(aYearAhead.from(now), "em um ano");
    expect(aYearAgo.from(now), "há um ano");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "um ano");
    expect(threeYearsAhead.from(now), "em 3 anos");
    expect(threeYearsAgo.from(now), "há 3 anos");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 anos");
  });

  test("en_US localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.enUS());

    expect(fewMomentsAhead.from(now), "in a few seconds");
    expect(fewMomentsAgo.from(now), "a few seconds ago");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "a few seconds");
    expect(aMinuteAhead.from(now), "in a minute");
    expect(aMinuteAgo.from(now), "a minute ago");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "a minute");
    expect(fiveMinutesAhead.from(now), "in 5 minutes");
    expect(fiveMinutesAgo.from(now), "5 minutes ago");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 minutes");
    expect(anHourAhead.from(now), "in an hour");
    expect(anHourAgo.from(now), "an hour ago");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "an hour");
    expect(sixHoursAhead.from(now), "in 6 hours");
    expect(sixHoursAgo.from(now), "6 hours ago");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 hours");
    expect(aDayAhead.from(now), "in a day");
    expect(aDayAgo.from(now), "a day ago");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "a day");
    expect(twoDaysAhead.from(now), "in 2 days");
    expect(twoDaysAgo.from(now), "2 days ago");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 days");
    expect(aMonthAhead.from(now), "in a month");
    expect(aMonthAgo.from(now), "a month ago");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "a month");
    expect(fourMonthsAhead.from(now), "in 4 months");
    expect(fourMonthsAgo.from(now), "4 months ago");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 months");
    expect(aYearAhead.from(now), "in a year");
    expect(aYearAgo.from(now), "a year ago");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "a year");
    expect(threeYearsAhead.from(now), "in 3 years");
    expect(threeYearsAgo.from(now), "3 years ago");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 years");
  });

  test("mn localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.mn());

    expect(fewMomentsAhead.from(now), "хэдэн хормын дараа");
    expect(fewMomentsAgo.from(now), "хэдэн хормын өмнө");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "хэдэн хором");
    expect(aMinuteAhead.from(now), "1 минутын дараа");
    expect(aMinuteAgo.from(now), "1 минутын өмнө");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "1 минут");
    expect(fiveMinutesAhead.from(now), "5 минутын дараа");
    expect(fiveMinutesAgo.from(now), "5 минутын өмнө");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 минут");
    expect(anHourAhead.from(now), "1 цагийн дараа");
    expect(anHourAgo.from(now), "1 цагийн өмнө");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "1 цаг");
    expect(sixHoursAhead.from(now), "6 цагийн дараа");
    expect(sixHoursAgo.from(now), "6 цагийн өмнө");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 цаг");
    expect(aDayAhead.from(now), "1 өдрийн дараа");
    expect(aDayAgo.from(now), "1 өдрийн өмнө");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "1 өдөр");
    expect(twoDaysAhead.from(now), "2 өдрийн дараа");
    expect(twoDaysAgo.from(now), "2 өдрийн өмнө");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 өдөр");
    expect(aMonthAhead.from(now), "1 сарын дараа");
    expect(aMonthAgo.from(now), "1 сарын өмнө");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "1 сар");
    expect(fourMonthsAhead.from(now), "4 сарын дараа");
    expect(fourMonthsAgo.from(now), "4 сарын өмнө");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 сар");
    expect(aYearAhead.from(now), "1 жилийн дараа");
    expect(aYearAgo.from(now), "1 жилийн өмнө");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "1 жил");
    expect(threeYearsAhead.from(now), "3 жилийн дараа");
    expect(threeYearsAgo.from(now), "3 жилийн өмнө");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 жил");
  });

  test("mn (Traditional) localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.mnMong());

    expect(fewMomentsAhead.from(now), "ᠬᠡᠳᠦᠨ ᠬᠣᠷᠤᠮ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(fewMomentsAgo.from(now), "ᠬᠡᠳᠦᠨ ᠬᠣᠷᠤᠮ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "ᠬᠡᠳᠦᠨ ᠬᠣᠷᠤᠮ");
    expect(aMinuteAhead.from(now), "1 ᠮᠢᠨᠦᠢᠲ ᠦᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(aMinuteAgo.from(now), "1 ᠮᠢᠨᠦᠢᠲ ᠦᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "1 ᠮᠢᠨᠦᠢᠲ");
    expect(fiveMinutesAhead.from(now), "5 ᠮᠢᠨᠦᠢᠲ ᠦᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(fiveMinutesAgo.from(now), "5 ᠮᠢᠨᠦᠢᠲ ᠦᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 ᠮᠢᠨᠦᠢᠲ");
    expect(anHourAhead.from(now), "1 ᠴᠠᠭ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(anHourAgo.from(now), "1 ᠴᠠᠭ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "1 ᠴᠠᠭ");
    expect(sixHoursAhead.from(now), "6 ᠴᠠᠭ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(sixHoursAgo.from(now), "6 ᠴᠠᠭ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 ᠴᠠᠭ");
    expect(aDayAhead.from(now), "1 ᠡᠳᠦᠷ ᠦᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(aDayAgo.from(now), "1 ᠡᠳᠦᠷ ᠦᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "1 ᠡᠳᠦᠷ");
    expect(twoDaysAhead.from(now), "2 ᠡᠳᠦᠷ ᠦᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(twoDaysAgo.from(now), "2 ᠡᠳᠦᠷ ᠦᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 ᠡᠳᠦᠷ");
    expect(aMonthAhead.from(now), "1 ᠰᠠᠷ᠎ᠠ ᠶᠢᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(aMonthAgo.from(now), "1 ᠰᠠᠷ᠎ᠠ ᠶᠢᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "1 ᠰᠠᠷ᠎ᠠ");
    expect(fourMonthsAhead.from(now), "4 ᠰᠠᠷ᠎ᠠ ᠶᠢᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(fourMonthsAgo.from(now), "4 ᠰᠠᠷ᠎ᠠ ᠶᠢᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 ᠰᠠᠷ᠎ᠠ");
    expect(aYearAhead.from(now), "1 ᠵᠢᠯ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(aYearAgo.from(now), "1 ᠵᠢᠯ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "1 ᠵᠢᠯ");
    expect(threeYearsAhead.from(now), "3 ᠵᠢᠯ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(threeYearsAgo.from(now), "3 ᠵᠢᠯ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 ᠵᠢᠯ");
  });

  test("mn (Traditional with numbers) localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.mnMongtn());

    expect(fewMomentsAhead.from(now), "ᠬᠡᠳᠦᠨ ᠬᠣᠷᠤᠮ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(fewMomentsAgo.from(now), "ᠬᠡᠳᠦᠨ ᠬᠣᠷᠤᠮ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "ᠬᠡᠳᠦᠨ ᠬᠣᠷᠤᠮ");
    expect(aMinuteAhead.from(now), "᠑ ᠮᠢᠨᠦᠢᠲ ᠦᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(aMinuteAgo.from(now), "᠑ ᠮᠢᠨᠦᠢᠲ ᠦᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "᠑ ᠮᠢᠨᠦᠢᠲ");
    expect(fiveMinutesAhead.from(now), "᠕ ᠮᠢᠨᠦᠢᠲ ᠦᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(fiveMinutesAgo.from(now), "᠕ ᠮᠢᠨᠦᠢᠲ ᠦᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "᠕ ᠮᠢᠨᠦᠢᠲ");
    expect(anHourAhead.from(now), "᠑ ᠴᠠᠭ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(anHourAgo.from(now), "᠑ ᠴᠠᠭ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "᠑ ᠴᠠᠭ");
    expect(sixHoursAhead.from(now), "᠖ ᠴᠠᠭ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(sixHoursAgo.from(now), "᠖ ᠴᠠᠭ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "᠖ ᠴᠠᠭ");
    expect(aDayAhead.from(now), "᠑ ᠡᠳᠦᠷ ᠦᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(aDayAgo.from(now), "᠑ ᠡᠳᠦᠷ ᠦᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "᠑ ᠡᠳᠦᠷ");
    expect(twoDaysAhead.from(now), "᠒ ᠡᠳᠦᠷ ᠦᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(twoDaysAgo.from(now), "᠒ ᠡᠳᠦᠷ ᠦᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "᠒ ᠡᠳᠦᠷ");
    expect(aMonthAhead.from(now), "᠑ ᠰᠠᠷ᠎ᠠ ᠶᠢᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(aMonthAgo.from(now), "᠑ ᠰᠠᠷ᠎ᠠ ᠶᠢᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "᠑ ᠰᠠᠷ᠎ᠠ");
    expect(fourMonthsAhead.from(now), "᠔ ᠰᠠᠷ᠎ᠠ ᠶᠢᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(fourMonthsAgo.from(now), "᠔ ᠰᠠᠷ᠎ᠠ ᠶᠢᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "᠔ ᠰᠠᠷ᠎ᠠ");
    expect(aYearAhead.from(now), "᠑ ᠵᠢᠯ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(aYearAgo.from(now), "᠑ ᠵᠢᠯ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "᠑ ᠵᠢᠯ");
    expect(threeYearsAhead.from(now), "᠓ ᠵᠢᠯ ᠤᠨ ᠳᠠᠷᠠᠭ᠎ᠠ");
    expect(threeYearsAgo.from(now), "᠓ ᠵᠢᠯ ᠤᠨ ᠡᠮᠦᠨ᠎ᠡ");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "᠓ ᠵᠢᠯ");
  });

  test("ko localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.koKr());

    expect(fewMomentsAhead.from(now), "몇 초 후");
    expect(fewMomentsAgo.from(now), "몇 초 전");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "몇 초");
    expect(aMinuteAhead.from(now), "1분 후");
    expect(aMinuteAgo.from(now), "1분 전");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "1분");
    expect(fiveMinutesAhead.from(now), "5분 후");
    expect(fiveMinutesAgo.from(now), "5분 전");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5분");
    expect(anHourAhead.from(now), "1시간 후");
    expect(anHourAgo.from(now), "1시간 전");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "1시간");
    expect(sixHoursAhead.from(now), "6시간 후");
    expect(sixHoursAgo.from(now), "6시간 전");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6시간");
    expect(aDayAhead.from(now), "1일 후");
    expect(aDayAgo.from(now), "1일 전");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "1일");
    expect(twoDaysAhead.from(now), "2일 후");
    expect(twoDaysAgo.from(now), "2일 전");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2일");
    expect(aMonthAhead.from(now), "1개월 후");
    expect(aMonthAgo.from(now), "1개월 전");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "1개월");
    expect(fourMonthsAhead.from(now), "4개월 후");
    expect(fourMonthsAgo.from(now), "4개월 전");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4개월");
    expect(aYearAhead.from(now), "1년 후");
    expect(aYearAgo.from(now), "1년 전");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "1년");
    expect(threeYearsAhead.from(now), "3년 후");
    expect(threeYearsAgo.from(now), "3년 전");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3년");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3년");
  });

  test("zh_CN localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.zhCn());

    expect(fewMomentsAhead.from(now), "几秒后");
    expect(fewMomentsAgo.from(now), "几秒前");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "几秒");
    expect(aMinuteAhead.from(now), "1 分钟后");
    expect(aMinuteAgo.from(now), "1 分钟前");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "1 分钟");
    expect(fiveMinutesAhead.from(now), "5 分钟后");
    expect(fiveMinutesAgo.from(now), "5 分钟前");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 分钟");
    expect(anHourAhead.from(now), "1 小时后");
    expect(anHourAgo.from(now), "1 小时前");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "1 小时");
    expect(sixHoursAhead.from(now), "6 小时后");
    expect(sixHoursAgo.from(now), "6 小时前");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 小时");
    expect(aDayAhead.from(now), "1 天后");
    expect(aDayAgo.from(now), "1 天前");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "1 天");
    expect(twoDaysAhead.from(now), "2 天后");
    expect(twoDaysAgo.from(now), "2 天前");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 天");
    expect(aMonthAhead.from(now), "1 个月后");
    expect(aMonthAgo.from(now), "1 个月前");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "1 个月");
    expect(fourMonthsAhead.from(now), "4 个月后");
    expect(fourMonthsAgo.from(now), "4 个月前");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 个月");
    expect(aYearAhead.from(now), "1 年后");
    expect(aYearAgo.from(now), "1 年前");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "1 年");
    expect(threeYearsAhead.from(now), "3 年后");
    expect(threeYearsAgo.from(now), "3 年前");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 年");
  });

  test("ja_JP localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.jaJp());

    expect(fewMomentsAhead.from(now), "数秒後");
    expect(fewMomentsAgo.from(now), "数秒前");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "数秒");
    expect(aMinuteAhead.from(now), "1分後");
    expect(aMinuteAgo.from(now), "1分前");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "1分");
    expect(fiveMinutesAhead.from(now), "5分後");
    expect(fiveMinutesAgo.from(now), "5分前");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5分");
    expect(anHourAhead.from(now), "1時間後");
    expect(anHourAgo.from(now), "1時間前");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "1時間");
    expect(sixHoursAhead.from(now), "6時間後");
    expect(sixHoursAgo.from(now), "6時間前");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6時間");
    expect(aDayAhead.from(now), "1日後");
    expect(aDayAgo.from(now), "1日前");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "1日");
    expect(twoDaysAhead.from(now), "2日後");
    expect(twoDaysAgo.from(now), "2日前");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2日");
    expect(aMonthAhead.from(now), "1ヶ月後");
    expect(aMonthAgo.from(now), "1ヶ月前");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "1ヶ月");
    expect(fourMonthsAhead.from(now), "4ヶ月後");
    expect(fourMonthsAgo.from(now), "4ヶ月前");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4ヶ月");
    expect(aYearAhead.from(now), "1年後");
    expect(aYearAgo.from(now), "1年前");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "1年");
    expect(threeYearsAhead.from(now), "3年後");
    expect(threeYearsAgo.from(now), "3年前");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3年");
  });

  test("tr_TR localization relative time test", () {
    Moment.setGlobalLocalization(MomentLocalizations.tr());

    expect(fewMomentsAhead.from(now), "birkaç saniye sonra");
    expect(fewMomentsAgo.from(now), "birkaç saniye önce");
    expect(fewMomentsAgo.from(now, dropPrefixOrSuffix: true), "birkaç saniye");
    expect(aMinuteAhead.from(now), "bir dakika sonra");
    expect(aMinuteAgo.from(now), "bir dakika önce");
    expect(aMinuteAgo.from(now, dropPrefixOrSuffix: true), "bir dakika");
    expect(fiveMinutesAhead.from(now), "5 dakika sonra");
    expect(fiveMinutesAgo.from(now), "5 dakika önce");
    expect(fiveMinutesAgo.from(now, dropPrefixOrSuffix: true), "5 dakika");
    expect(anHourAhead.from(now), "bir saat sonra");
    expect(anHourAgo.from(now), "bir saat önce");
    expect(anHourAgo.from(now, dropPrefixOrSuffix: true), "bir saat");
    expect(sixHoursAhead.from(now), "6 saat sonra");
    expect(sixHoursAgo.from(now), "6 saat önce");
    expect(sixHoursAgo.from(now, dropPrefixOrSuffix: true), "6 saat");
    expect(aDayAhead.from(now), "bir gün sonra");
    expect(aDayAgo.from(now), "bir gün önce");
    expect(aDayAgo.from(now, dropPrefixOrSuffix: true), "bir gün");
    expect(twoDaysAhead.from(now), "2 gün sonra");
    expect(twoDaysAgo.from(now), "2 gün önce");
    expect(twoDaysAgo.from(now, dropPrefixOrSuffix: true), "2 gün");
    expect(aMonthAhead.from(now), "bir ay sonra");
    expect(aMonthAgo.from(now), "bir ay önce");
    expect(aMonthAgo.from(now, dropPrefixOrSuffix: true), "bir ay");
    expect(fourMonthsAhead.from(now), "4 ay sonra");
    expect(fourMonthsAgo.from(now), "4 ay önce");
    expect(fourMonthsAgo.from(now, dropPrefixOrSuffix: true), "4 ay");
    expect(aYearAhead.from(now), "bir yıl sonra");
    expect(aYearAgo.from(now), "bir yıl önce");
    expect(aYearAgo.from(now, dropPrefixOrSuffix: true), "bir yıl");
    expect(threeYearsAhead.from(now), "3 yıl sonra");
    expect(threeYearsAgo.from(now), "3 yıl önce");
    expect(threeYearsAgo.from(now, dropPrefixOrSuffix: true), "3 yıl");
  });
}

class DateFormmater {
  static date(DateTime date) {
    String month;
    String day;
    switch (date.month) {
      case 1:
        month = "Jan";
        break;
      case 2:
        month = "Feb";
        break;
      case 3:
        month = "Mar";
        break;
      case 4:
        month = "Apr";
        break;
      case 5:
        month = "May";
        break;
      case 6:
        month = "June";
        break;
      case 7:
        month = "Juli";
        break;
      case 8:
        month = "Agu";
        break;
      case 9:
        month = "Spt";
        break;
      case 10:
        month = "Oct";
        break;
      case 11:
        month = "Nov";
        break;
      case 12:
        month = "Des";
        break;
    }

    switch (date.weekday) {
      case 1:
        day = "Senin";
        break;
      case 2:
        day = "Selasa";
        break;
      case 3:
        day = "Rabu";
        break;
      case 4:
        day = "Kamis";
        break;
      case 5:
        day = "Jumat";
        break;
      case 6:
        day = "Sabtu";
        break;
      case 7:
        day = "Minggu";
        break;
    }

    return "$day, ${date.day} $month ${date.year}";
  }
}

class Dayss {
  final String day;
  final bool clicked;

  Dayss({required this.day, required this.clicked});
  static List<Dayss> days = [
    Dayss(day: 'Mo', clicked: false),
    Dayss(day: 'Tu', clicked: false),
    Dayss(day: 'We', clicked: true),
    Dayss(day: 'Th', clicked: false),
    Dayss(day: 'Fr', clicked: false),
    Dayss(day: 'Sa', clicked: false),
    Dayss(day: 'Su', clicked: false),
  ];
}

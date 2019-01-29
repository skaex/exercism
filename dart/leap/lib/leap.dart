/*
* Exercism -> Dartlang -> Leap
**/
class Leap {
  bool leapYear(int yearInput) {
    final year = Year(yearInput);

    return (
      year.isDivisibleBy(4) &&
      (!year.isDivisibleBy(100) ||
      year.isDivisibleBy(400))
    );
  }
}

/*
* Just expressing trying out the lingo
**/
class Year {
  final int _year;

  Year(this._year);

  bool isDivisibleBy(int number) {
    return _year % number == 0;
  }
}

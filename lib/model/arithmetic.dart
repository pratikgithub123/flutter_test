class Arithmetic {
  int? first;
  int? second;

  Arithmetic({this.first, this.second});

  int add() {
    return first! + second!;
  }

  int sub() {
    return first! - second!;
  }

  int mult() {
    return first! * second!;
  }

  int div() {
    return first! ~/ second!;
  }
}

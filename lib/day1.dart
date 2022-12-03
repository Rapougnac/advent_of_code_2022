import 'dart:io';

void main(List<String> args) {
  final elf1 = partOne();
  final elves2 = partTwo();
  print(elf1);
  print(elves2);
}

Iterable<List<String>> genElves(String inpt) {
  final elvesSplitted = inpt.split('\n\n');
  final elves = elvesSplitted.map<List<String>>((e) => e.split('\n'));
  return elves;
}

int partOne([String? inpt]) {
  inpt ??= input;

  final totalForElves = _(inpt);

  return totalForElves.last;
}

int partTwo([String? inpt]) {
  inpt ??= input;

  final totalForElves = _(inpt);

  return totalForElves.reversed.take(3).fold<int>(0, (previousValue, element) => previousValue + element);
}

List<int> _(String inpt) {
  final elves = genElves(inpt);

  final totalForElves = <int>[];
  for (final calories in elves) {
    final intParsed = calories.where((e) => e.isNotEmpty).map<int>(int.parse);
    final total = intParsed.fold<int>(0, (previousValue, element) => previousValue + element);
    totalForElves.add(total);
  }

  totalForElves.sort();

  return totalForElves;
}

final input = File('data/d1.txt').readAsStringSync();

library advent_of_code_2022.day1;

import 'dart:io';

import 'package:logging/logging.dart';

final day1Logger = Logger('Day 1');

void main(List<String> args) {
  Logger.root.onRecord.listen((event) {
    print('${DateTime.now()} {Logger: ${event.loggerName}} [${event.level}]: ${event.message}');
  });
  final elf1 = partOne();
  final elves2 = partTwo();
  day1Logger.info('Result for part one: $elf1');
  day1Logger.info('Result for part two: $elves2');
}

Iterable<List<String>> genElves([String? inpt]) {
  inpt ??= input;
  final elvesSplitted = inpt.split('\n\n');
  final elves = elvesSplitted.map<List<String>>((e) => e.split('\n')).toList();
  elves.last.removeLast(); // Remove trailing empty string
  return elves;
}

int partOne([String? inpt]) {
  final totalForElves = _(inpt);

  return totalForElves.last;
}

int partTwo([String? inpt]) {
  final totalForElves = _(inpt);

  return totalForElves.reversed.take(3).fold<int>(0, (previousValue, element) => previousValue + element);
}

List<int> _([String? inpt]) {
  final elves = genElves(inpt);
  day1Logger.finer('Generated elves: $elves');

  final totalForElves = <int>[for (final elf in elves) elf.map<int>(int.parse).fold<int>(0, (pre, el) => pre + el)];

  day1Logger.fine('Parsed elves: $totalForElves');

  totalForElves.sort();

  return totalForElves;
}

final input = File('data/d1.txt').readAsStringSync();

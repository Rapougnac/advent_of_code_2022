import 'dart:io';
import 'day3.dart' show F;

void main(List<String> args) {
  int overlappedSectionsPt1 = partOne();
  int overlappedSectionsPt2 = partTwo();
  print(overlappedSectionsPt1);
  print(overlappedSectionsPt2);
}

int partOne([String? inpt]) {
  final paired = genPaired(inpt);
  final isOverlapping = paired.map((e) => e.first.every((el) => e.last.contains(el)) || e.last.every((el) => e.first.contains(el))).where((e) => e);

  return isOverlapping.length;
}

int partTwo([String? inpt]) {
  final paired = genPaired(inpt);
  final isOverlapping = paired.map((e) => e.first.any((el) => e.last.contains(el)) || e.last.any((el) => e.first.contains(el))).where((e) => e);

  return isOverlapping.length;
}

Iterable<List<String>> genPairs([String? inpt]) {
  inpt ??= input;
  return input.split('\n').map((e) => e.split(',')).where((e) => e.where((element) => element.isNotEmpty).isNotEmpty);
}

Iterable<List<List<int>>> genPaired([String? inpt]) {
  final pairs = genPairs(inpt);
  List<List<int>> ranges = [];
  for (final pair in pairs) {
    for (final numPair in pair) {
      final splitted = numPair.split('-').map(int.parse);
      final from = splitted.first;
      final to = splitted.last;


      List<int> range = [
        for (int i = from; i <= to; i++)
          i
      ];

      ranges.add(range);
    }
  }
  final paired = ranges.chunk(2);
  return paired;
}

final input = File('data/d4.txt').readAsStringSync();

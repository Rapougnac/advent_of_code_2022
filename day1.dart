import 'dart:io';

void main(List<String> args) {
  final elvesSplitted = input.split('\n\n');
  final elves = elvesSplitted.map<List<String>>((e) => e.split('\n'));
  final totalForElves = <int>[];
  for (final calories in elves) {
    final intParsed = calories.where((e) => e.isNotEmpty).map<int>(int.parse);
    final total = intParsed.fold<int>(0, (previousValue, element) => previousValue + element);
    totalForElves.add(total);
  }

  totalForElves.sort();
  print(totalForElves.last); // Part 1
  print(totalForElves.reversed.take(3).fold<int>(0, (previousValue, element) => previousValue + element)); // Part 2
}




// Was too lazy to read a file
final input = File('data/d1.txt').readAsStringSync();
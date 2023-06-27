library advent_of_code.day6;

import 'dart:io';

void main(List<String> args) {
  print(partOne());
  print(partTwo());
}

int partOne([String? inpt]) => getMarker(4, (inpt ?? input).split(''));

int partTwo([String? inpt]) => getMarker(14, (inpt ?? input).split(''));

int getMarker(int base, List<String> splitted) {
  int marker = 0;

  while (splitted.sublist(marker, marker + base).toSet().length != base) {
    marker++;
  }

  return marker + base;
}

final input = File('data/d6.txt').readAsStringSync();
library advent_of_code.day5;

import 'dart:io';

void main(List<String> args) {
  String cratesNamesPt1 = partOne();
  String cratesNamesPt2 = partTwo();
  print(cratesNamesPt1);
  print(cratesNamesPt2);
}

String partOne([String? inpt]) => part(inpt: inpt);

String partTwo([String? inpt]) => part(inpt: inpt, partOne: false);

String part({String? inpt, bool partOne = true}) {
  final parsed = parseInput(inpt);
  final crates = parsed.first;
  final editedCrates = crates;
  final moves = parsed.last;
  for (final move in moves) {
    final from = int.parse(move[1]) - 1;
    final to = int.parse(move.last) - 1;
    final nbCratesToMove = int.parse(move.first);

    var fromCrate = crates[from];
    var toCrate = crates[to];

    final toMove = fromCrate.where((e) => e != ' ').take(nbCratesToMove).toList();

    for (final m in toMove) {
      fromCrate.removeAt(fromCrate.indexOf(m));
    }

    while (fromCrate.length < 8) {
      fromCrate = [' ', ...fromCrate]; // Fill up with spaces
    }

    if (partOne) {
      toCrate = [...toMove.reversed, ...toCrate];
    } else {
      toCrate = [...toMove, ...toCrate];
    }

    editedCrates[from] = fromCrate;
    editedCrates[to] = toCrate;
  }

  return editedCrates.map((e) => e.first).join();
}

/// Returns an input
/// ```
///     [D]
/// [N] [C]
/// [Z] [M] [P]
///  1   2   3
///
/// move 1 from 2 to 1
/// move 3 from 1 to 3
/// move 2 from 2 to 1
/// move 1 from 1 to 2
/// ```
/// Into
/// ```
/// [[['N', 'Z'], ['D', 'C', 'M'], ['P']], [['1', '2', '1'], ['3', '1', '3'], ['2', '2', '1'], ['1', '1', '2']]];
/// ```

List<List<List<String>>> parseInput([String? inpt]) {
  inpt ??= input;
  final res = <List<List<String>>>[];
  final parsedCratesAndMoves = inpt.split('\n\n');
  final crates = parsedCratesAndMoves.first.split('\n');
  crates.removeLast(); // Remove indexes as we dont' care

  final parsedCrates = crates.map((crate) => List.generate((crate.length / 4).ceil(), (i) => crate.substring(i * 4 + 1, i * 4 + 2))).toList();

  final stacks = parsedCrates.first.asMap().entries.map((e) => parsedCrates.map((el) => el[e.key]).where((element) => element.isNotEmpty).toList()).toList();

  final moves = parsedCratesAndMoves.last.split('\n');
  final parsedMoves = <List<String>>[for (final move in moves) move.split(RegExp(r'[a-z]')).map((e) => e.trim()).where((e) => e.isNotEmpty).toList()];
  parsedMoves.removeLast(); // empty

  res.add(stacks);
  res.add(parsedMoves);

  return res;
}

final input = File('data/d5.txt').readAsStringSync();

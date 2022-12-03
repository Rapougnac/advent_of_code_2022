library advent_of_code_2022.day2;

import 'dart:io';

void main(List<String> args) {
  final scorePt1 = partOne();
  final scorePt2 = partTwo();

  print(scorePt1);
  print(scorePt2);
}

Iterable<String> genMatches([String? inpt]) {
  inpt ??= input;
  return inpt.split('\n').where((e) => e.isNotEmpty);
}

int partOne([String? inpt]) {
  int score = 0;
  final matches = genMatches(inpt);
  for (final match in matches) {
    final plays = match.split(' ');
    final opponentPlay = records[plays.first]!;
    final mePlay = records[plays.last]!;

    switch (mePlay) {
      case RPS.rock:
        score += rockValue;
        switch (opponentPlay) {
          case RPS.rock:
            score += drawValue;
            break;
          case RPS.scissors:
            score += winValue;
            break;
          default:
            break;
        }
        break;
      case RPS.paper:
        score += paperValue;
        switch (opponentPlay) {
          case RPS.rock:
            score += winValue;
            break;
          case RPS.paper:
            score += drawValue;
            break;
          default:
            break;
        }
        break;
      case RPS.scissors:
        score += scissorsValue;
        switch (opponentPlay) {
          case RPS.paper:
            score += winValue;
            break;
          case RPS.scissors:
            score += drawValue;
            break;
          default:
            break;
        }
        break;
    }
  }

  return score;
}

int partTwo([String? inpt]) {
  int score = 0;

  final matches = genMatches(inpt);

  for (final match in matches) {
    final plays = match.split(' ');
    final opponentRecord = records[plays.first]!;
    final meRecords = recordsDrawWinLoose[plays.last]!;

    switch (opponentRecord) {
      case RPS.rock:
        switch (meRecords) {
          case DrawWinLoose.draw:
            score += drawValue;
            // Rock equals rock
            score += rockValue;
            break;
          case DrawWinLoose.loose:
            // Scissors looses against rock
            score += scissorsValue;
            break;
          case DrawWinLoose.win:
            score += winValue;
            // Paper win againts rock
            score += paperValue;
        }
        break;
      case RPS.paper:
        switch (meRecords) {
          case DrawWinLoose.draw:
            score += drawValue;
            // Paper equals paper
            score += paperValue;
            break;
          case DrawWinLoose.loose:
            // Rock looses against paper
            score += rockValue;
            break;
          case DrawWinLoose.win:
            score += winValue;
            // Scissors win against paper
            score += scissorsValue;
            break;
        }
        break;
      case RPS.scissors:
        switch (meRecords) {
          case DrawWinLoose.draw:
            score += drawValue;
            // Scissors equals scissors
            score += scissorsValue;
            break;
          case DrawWinLoose.loose:
            // Paper looses against scissors
            score += paperValue;
            break;
          case DrawWinLoose.win:
            score += winValue;
            // Rock win against scissors
            score += rockValue;
            break;
        }
        break;
    }
  }

  return score;
}

enum RPS {
  rock,
  paper,
  scissors,
}

enum DrawWinLoose {
  loose,
  draw,
  win,
}

const int rockValue = 1;
const int paperValue = 2;
const int scissorsValue = 3;

const drawValue = 3;
const winValue = 6;

const records = {
  'A': RPS.rock,
  'B': RPS.paper,
  'C': RPS.scissors,
  'X': RPS.rock,
  'Y': RPS.paper,
  'Z': RPS.scissors,
};

const recordsDrawWinLoose = {
  'X': DrawWinLoose.loose,
  'Y': DrawWinLoose.draw,
  'Z': DrawWinLoose.win,
};

final input = File('data/d2.txt').readAsStringSync();

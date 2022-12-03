import 'dart:io';

void main(List<String> args) {
  int scorePt1 = partOne();
  int scorePt2 = partTwo();
  print(scorePt1);
  print(scorePt2);
}

Iterable<String> genBackPacks([String? inpt]) {
  inpt ??= input;

  return inpt.split('\n').where((element) => element.isNotEmpty);
}

int partOne([String? inpt]) {
  int score = 0;
  final backpacks = genBackPacks(inpt);
  for (final backpack in backpacks) {
    final firstPart = backpack.substring(0, backpack.length ~/ 2);
    final secondPart = backpack.substring(backpack.length ~/ 2, backpack.length);

    final firstPartSplitted = firstPart.split('');
    final secondPartSplitted = secondPart.split('');
    String sameChar = firstPartSplitted.firstWhere((e) => secondPartSplitted.contains(e));
    final scoreForChar = records[sameChar]!;
    score += scoreForChar;
  }

  return score;
}

int partTwo([String? inpt]) {
  final List<int> finalScore = [];
  final backpacks = genBackPacks(inpt);
  final threeChunkedBackpacks = backpacks.toList().chunk(3);

  for (final threeChunkedBackpack in threeChunkedBackpacks) {
    final partitionned = threeChunkedBackpack.map((e) => e.split('')).toList();
    for (final part in partitionned) {
      final part2 = partitionned[1], part3 = partitionned[2];
      String sameChar = part.firstWhere((e) => part2.contains(e) && part3.contains(e));
      final scoreForChar = records[sameChar]!;
      finalScore.add(scoreForChar);
      break;
    }
  }

  return finalScore.fold(0, (previousValue, element) => previousValue + element);
}

const lowercaseAlphabet = 'abcdefghijklmnopqrstuvwxyz';
const uppercaseAlphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

Map<String, int>? _records;

final records = _records ?? (() {
  final tmp = <String, int>{};
  for (int i = 0, y = 0; i < lowercaseAlphabet.length + uppercaseAlphabet.length; i++) {
    try {
      tmp.putIfAbsent(lowercaseAlphabet[i], () => i + 1); // If OOB, go to upper case.
    } catch (_) {
      tmp.putIfAbsent(uppercaseAlphabet[y], () => i + 1);
      y++;
    }
  }

  return _records = tmp;
})();

extension F<E> on List<E> {
  // https://github.com/nyxx-discord/nyxx/blob/dev/lib/src/utils/utils.dart#L14
  // Just edited to be sync
  Iterable<List<E>> chunk(int chunkSize) sync* {
    final len = length;
    for (var i = 0; i < len; i += chunkSize) {
      final size = i + chunkSize;
      yield sublist(i, size > len ? len : size);
    }
  }
}

final input = File('data/d3.txt').readAsStringSync();

import 'package:test/test.dart';

import 'package:advent_of_code_2022/day6.dart' hide input;

const input = '''bvwbjplbgvbhsrlpgdmjqwftvncz
nppdvjthqldpwncqszvftbrmjlhg
nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg
zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw
mjqjpqmgbljsphdztnvjfqwrcgsmlb
bvwbjplbgvbhsrlpgdmjqwftvncz
nppdvjthqldpwncqszvftbrmjlhg
nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg
zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw''';

const markers = [5, 6, 10, 11, 19, 23, 23, 29, 26];

void main() {
  test('Day six, Part one', () {
    int i = 0;
    for (final inpt in input.split('\n').take(4)) {
      final marker = partOne(inpt);

      expect(marker, markers[i++]);
    }
  });

  test('Day six, Part two', () {
    int i = 4;
    for (final inpt in input.split('\n').skip(4)) {
      final marker = partTwo(inpt);

      expect(marker, markers[i++]);
    }
  });
}

import 'package:test/test.dart';

import 'package:advent_of_code_2022/day4.dart' hide input;

const input = '''
2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8
''';

void main() {
  test('Day four, Part one', () {
    final res = partOne(input);

    expect(res, 2);
  });

  test('Day four, Part two', () {
    final res = partTwo(input);

    expect(res, 4);
  });
}

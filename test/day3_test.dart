import 'package:test/test.dart';
import 'package:advent_of_code_2022/day3.dart' hide input;

const input = '''
vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw
''';

void main() {
  test('Day three, Part one', () {
    final res = partOne(input);

    expect(res, 157);
  });

  test('Day three, Part two', () {
    final res = partTwo(input);
    expect(res, 70);
  });
}

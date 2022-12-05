import 'package:test/test.dart';

import 'package:advent_of_code_2022/day5.dart' hide input;

const input = '''
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2
''';

void main() {
  test('Day five, Part one', () {
    final res = partOne(input);
    expect(res, 'CMZ');
  });

  test('Day five, Part two', () {
    final res = partTwo(input);
    expect(res, 'MCD');
  });
}
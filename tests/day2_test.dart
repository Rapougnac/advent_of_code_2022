import 'package:test/test.dart';
import 'package:advent_of_code_2022/day2.dart' hide input;

const input = '''
A X
B Y
C Z
B Y
B Y
C X
A Z
C Z
C Z
A Y
B Z
B Z
B X
A X
''';

void main() {

  test('Day two, Part one', () {
    final res = partOne(input);
    expect(res, 78);
  });

  test('Day two, Part two', () {
    final res = partTwo(input);
    expect(res, 75); 
  });
}
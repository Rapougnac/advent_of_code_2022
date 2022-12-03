import 'package:test/test.dart';
import 'package:advent_of_code_2022/day1.dart' hide input;

const input = '''
1000
2000
3000

4000
5000

6000
7000
8000

9000

10000

11000
12000
''';

void main() {
  test('Day one, Part one', () {
    final res = partOne(input);
    expect(res, 23000);
  });

  test('Day one, Part two', () {
    final res = partTwo(input);
    expect(res, 54000);
  });
}

import 'dart:math';

void main(List<String> arguments) {
  print('Hello, Dart Apprentice reader!');
  print(2 + 6);
  print(22 / 7);
  print(22 ~/ 7);
  print(28 % 10);

  // MATH FUNCTIONS
  print(sin(45 * pi / 180));
  print(cos(135 * pi / 180));
  print(max(5, 10));
  print(min(-5, -10));

  // VARIABLES
  int number = 10;
  num myNumber;
  myNumber = 10;
  myNumber = 3.1412;

  dynamic myVariable;
  myVariable = 10;
  myVariable = 3.14;
  myVariable = 'Ten';

  var someNumber = 10;
  someNumber = 15;
  //someNumber = 3.14;

  //CONSTANTS - compile-time constants
  const myConstant = 10;
  //FINNAL CONSTANT - runtime constants
  final hoursSinceMidnight = DateTime.now().hour;
  print(hoursSinceMidnight);

  //Mini-EX
  const myAge = 36;
  double averageAge = 36;
  averageAge = 30;
  const testNumber = 20;
  const evenOdd = testNumber / 2;

  //INNCREMENT AND DECREMENT
  double counter = 100;
  counter++;
  counter--;
  counter *= 3;
  counter /= 2;
  // CHALLEN
  //2
}

// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.
import 'dart:math';

/// Here is the emoji you'll use in the lesson today for your cut-and-paste
/// convenience:
///
/// ❤

const global = 'Hellp, World';
enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}
void main() {
  //BOOLEAN
  const bool yes = true;
  const bool no = false;

  const doesOneEqualTwo = (1 == 2);
  print(doesOneEqualTwo);
  const doesOneNotEqualTwo = (1 != 2);
  const isOneGreaterThanTwo = (1 > 2);

  //LOGIC
  /// AND: &&
  /// OR: ||
  /// EQUAL: ==
  /// ORDER: !, >= > <= <, == !=, &&, ||

  //STRING EQUALITY
  const guess = 'dog';
  const dogEqualsCat = guess == 'cat';
  print(dogEqualsCat);

//IF statement
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }
  // Else-if chains
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);

  //VARIABBLE SCOPE
  const local = 'Hello, main';
  if (2 > 1) {
    const insideIf = 'Hello, anybody?';
    print(global);
    print(local);
    print(insideIf);
  }
  print(global);
  print(local);
  // print(insideIf); ERROR

  //The ternary conditional operator
  // (condition) ? valueIfTrue : valueIfFalse;
  const score = 83;
  const message = (score >= 60) ? 'You passed' : 'You failed';
  print(message);

  //SWITCH STATEMENT
  const number = 3;
  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default:
      print('something else');
  }

  // ENUMERATED TYPE
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen');
      break;
    case Weather.snowy:
      print('Get your skis');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }

  //LOOP
  //White loops
  var sum = 1;
  while (sum < 10) {
    sum += 4;
    print(sum);
  }
  //do-while loops
  sum = 1;
  do {
    sum += 4;
    print(sum);
  } while (sum < 10);

  //break out of loop
  sum = 1;
  while (true) {
    sum += 4;
    if (sum > 10) {
      break;
    }
  }

  //random
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six!');
  }
  print('Finally, you got a six!');

  //FOR LOOPS
  for (var i = 0; i < 5; i++) {
    print(i);
  }
  //The continue
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }
  //For-in loops
  const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  //For-each loops
  const myNumbers = [1, 2, 3];
  //myNumbers.forEach((number) => print(number));
  myNumbers.forEach((element) {
    print(element);
  });
  //challen 4 Fionacci
  const fibonacciNum = 3000000;
  var fibbonacciResult = 0;
  if (fibonacciNum > 2) {
    var current = 1;
    var previous = 1;
    var done = 2;
    while (done < fibonacciNum) {
      final next = current + previous;
      previous = current;
      current = next;
      done += 1;
    }
    print('Fibonacci number $fibonacciNum is $current.');
  } else if (fibonacciNum == 1) {
    fibbonacciResult = 1;
  } else if (fibonacciNum == 0) {
    fibbonacciResult = 0;
  } else {
    print('WRONG FIBONACCI!');
  }
}

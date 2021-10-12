// Copyright (c) 2020 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:async';
import 'package:characters/characters.dart';

/// Copy and paste the following emojis as needed to complete this
/// chapter's exercizes and challenges:
///
/// 🎯
/// 🇲🇳
/// 👨‍👩‍👧‍👦
/// 🇹🇩🇷🇴
/// 👍🏿
/// types in Dart: int, double, num, dynamic, String
void main() {
  num myNumber = 3.14;
  print(myNumber is double);
  print(myNumber is int);
  print(myNumber.runtimeType);

  //TYPE CONVERSION
  var integer = 100;
  var decimal = 12.5;
  integer = decimal.toInt();
  print(integer);

  // Casting down
  num someNumber = 3;
  final someInt = someNumber as int;
  print(someInt.isEven);

  //STRING
  var salutation = 'Hello!';
  print(salutation.codeUnits);
  const dart = '🎯';
  print(dart.runes);
  const flag = '🇲🇳';
  print(flag.runes);
  const family = '👨‍👩‍👧‍👦';
  print(family.runes);
  print(family.characters.length);
  print("my cat's food");

/*
  var message = 'Hello' + ' my name is ';
  const name = 'Ray';
  message += name;
  print(message);
*/
  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Ray');
  message.toString();
  print(message);

  // INTERPOLCATION
  const name = 'Ray';
  const introduction = 'Hello my name is $name';
  print(introduction);

  const oneThird = 1 / 3;
  final sentence = 'One third is ${oneThird.toStringAsFixed(3)}.';
  print(sentence);

  //Multi-line strings
  const bigString = '''
  You can have a string
  that contains multiple 
  lines
  by
  doing this.
  ''';
  print(bigString);
  const oneLine = 'This is only '
      'a single '
      'line '
      'at runtime.';
  print(oneLine);

  const twoLines = 'This is\ntwo lines.';
  print(twoLines);
  //raw string
  const rawString = r'My name \n is $name.';
  print(rawString);

  //inserting characters
  print('I \u2764 Dart \u0021');
  print('I love \u{1F3AF}');

//OBJECT AND DYNAMIC TYPES
  //dynamic myVariable = 42;
  //myVariable = 'Hello';
  //var myVariable;
  //myVariable = 42;
  //myVariable = 'Hello';
  Object? myVariabble = 42;
  myVariabble = 'hello';

//CHallenge
  const twoCountries = '🇹🇩🇷🇴';
  print(twoCountries.runes);
}

void main() {
  const input = 12;
  final output = compliment(input);
  print(output);
  helloPersonAndPet('Chris', 'Fluffy');
  print(fullName('Ray', 'Wenderlich'));
  print(fullName('Albert', 'Einstein', 'Professor'));
  print(withinTolerance(5));
  print(withinTolerance(15));
  print(withinTolerance(9, 7, 11));
  print(withinTolerance(9, 7));

  print(withinTolerance1(100, min: 7, max: 10));
  print(withinTolerance2(value: 7, max: 100, min: 10));
  print(compliment1(122));

  final triple = applyMultiplier(3);
  print(triple(6));

  //Anonymmous function in forEach
  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });
}

String compliment(int number) {
  return '$number is a very nice number.';
}

void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, anb your furry friend, $pet!');
}

String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

//Providing default values
bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

//Naming parameters
bool withinTolerance1(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

//Name parameters required
bool withinTolerance2({
  required int value,
  int min = 0,
  int max = 10,
}) {
  return min <= value && value <= max;
}

//Optional types
compliment1(number) {
  return '$number is a very nice number.';
}

// ASSIGNING FUNCTIONS TO VARIABLES
int number = 4;
String greeting = 'hello';
bool isHungry = true;
Function multiply = (int a, int b) {
  return a * b;
};

// USING anonymous function
final multiply1 = (int a, int b) {
  return a * b;
};

//Returning a function
Function applyMultiplier(num mutiplier) {
  return (num value) {
    return value * mutiplier;
  };
}

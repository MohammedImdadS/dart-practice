import 'dart:math';

class Test {
  String val1 = 'One';
  String val2 = 'Two';

  int randomNumber() {
    print("Random");
    return Random().nextInt(10);
  }
}

void main(List<String> args) {
  // You have two ways to give a value to the variables
    final test = Test();

  // first way, "the classic" way
    test.val1 = 'one';
    test.val2 = 'two';

  // second way,using the cascade operator
  test..val1 = '1';
  test..val2 = '2';

  // you can do same even with method but return value is ignored.
  var textmethod = test.randomNumber(); // randomNumber is return
  print(textmethod);
  var c = test..randomNumber();  // Instance of Test will be return but it won't return randomNumber
  print(c);
}
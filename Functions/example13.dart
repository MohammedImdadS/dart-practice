bool checkEven(int value) => value % 2 == 0;

void main(List<String> args) {
  bool Function(int) checker = checkEven;
  final checker1 = checkEven;
  print(checker(10)); // true
  print(checker1(12));
  print('-------');

  bool Function(int) isEven = (int value) => value % 2 == 0;
  print(isEven(1)); // false
  print('-------');

  
  final value = test((reaction) {
    return reaction % 2 == 0 ? reaction : 0;
  });
  print(value);
  print('-------');

  test1();
}

int test(int Function(int) action) {
  final list = [1, 2, 3, 4, 5];
  var  add = 0;
  list.forEach((element) {
    add += action(element); // callback function
  });
  return add;
}

void test1({int? a, int? b}) {
  print('$a, $b');
}
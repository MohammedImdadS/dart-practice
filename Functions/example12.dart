void main(List<String> args) {
  final foo = doSomething(10, 20);
  print(foo());
  //*-------or----
  print(doSomething(10, 40)());
}

//! Returning function from function

int Function() doSomething(int lhs, int rhs) => () => lhs + rhs;

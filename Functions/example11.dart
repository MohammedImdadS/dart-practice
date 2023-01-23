void main(List<String> args) {
  print(minus());
  print(minus(20, 10));
  print(add());
  print(add(30, 50));
  
  //Passing Functions to another function
  print(performOperation(10, 20, (a, b) => a + b));
  print(performOperation(10, 20, add));

  print(performOperation(10, 20, (a, b) => a - b));
  print(performOperation(10, 20, minus));
  
}
int performOperation(
    int a,
    int b,
    int Function(int, int) operation,
  ) {
    return operation(a,b);
  }

int minus([
  int lhs = 10,
  int rhs = 5,
]) =>
    lhs - rhs;
int add([
  int lhs = 10,
  int rhs = 5,
]) =>
    lhs + rhs;

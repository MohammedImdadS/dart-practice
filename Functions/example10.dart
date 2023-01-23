void main(List<String> args) {
  print(add());
  print(add(2, 2));
  print(add(3));
  print(add(3, 4));
}

//! optional default parameter is createdby using []
int add([
  int a = 1,
  int b = 2,
]) {
  return a + b;
}

void main(List<String> args) {
  // if you put ? after data type it either be null or it can be some value
  int? age = 10;
  age = null;
  if (age == null) {
    print('Age is null');
  } else {
    print('Age is NOT null');
  }
}

void someThing(int? age) {
  if (age == null) {
    print('Age is null');
  } else {
    print('Age is NOT null');
  }
}
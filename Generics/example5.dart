void main(List<String> args) {
  // we deciding the T type of JSON<T> in here
  const JSON<String> json = {
    'name': 'Foo',
    // The element type 'int' can't be assigned to the map value type 'String'.
    //uncomment to see error
    // 'age': 23, 
    'address': '123 main st',
  };
  print(json);
}

typedef JSON<T> = Map<String, T>;

void main(List<String> args) {
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue);
final int intValue = eitherIntOrDouble();
print(intValue);

}

// T is a generic type 
// E element


// No Parameters 
// Call Side defines what it want to get from this function
T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
    return 1 as T;
    case double:
    return 1.0 as T;
    default:
    throw Exception("Not support");
  }
}
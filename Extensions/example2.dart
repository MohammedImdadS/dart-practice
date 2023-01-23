// void main(List<String> args) {
//   //* Here one List is int and other is double data type 
//   //* but sum is num type so the return type is num
//   //* so it cause exception 
//   //* To overcome this we have to change the Itetable type in extension to generic 
  

//   final sumOfIntegers = [1,2,3].sum;
//   final sumOfDoubles = [1.1,2.2,3.3].sum;
//   print(sumOfIntegers);
//   print(sumOfDoubles);
  
// }

// extension on Iterable<num> {
//   num get sum => reduce((value, element) => value + element);
// }


void main(List<String> args) {
  final sumOfIntegers = [1,2,3].sum;
  final sumOfDoubles = [1.1,2.2,3.3].sum;
  print(sumOfIntegers);
  print(sumOfDoubles);
}


extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}



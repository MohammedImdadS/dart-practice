// Generic class and generic extensions

void main(List<String> args) {
  const tuple = Tuple(1, 20.3);
  print(tuple);
  final swapped = tuple.swap();
  print(swapped);
  print(tuple.sum);
}

class Tuple<L, R> {
  final L left;
  final R right;
  const Tuple(this.left, this.right);
  
  @override
  String toString() => 'Tuple, left = $left, right = $right';
}

extension <L, R> on Tuple<L, R> {
  // If you not specify the return type then it a dynamic type at call side
  // to check it remove <R, L> before swap function
  Tuple<R, L> swap() => Tuple(right, left);
}

//These is only work if at call side both are int type
// extension on Tuple<int, int> {
//   num get sum => left + right;
// }

extension <L extends num, R extends num>on Tuple<L, R> {
  num get sum => left + right;
}
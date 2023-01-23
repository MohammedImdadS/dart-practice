void main(List<String> args) {
  print(doTypesMacth(1, 2));
  print(doTypesMacth(1, 2.2));
  print(doTypesMacth(1, 'Foo'));
  print(doTypesMacth('Foo', 'Bar'));
}

// comparition of two objects
// bool doTypesMacth(Object a, Object b) {
//   return a.runtimeType == b.runtimeType;
// }

bool doTypesMacth<L, R>(L a, R b) => L == R;
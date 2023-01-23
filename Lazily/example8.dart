void main(List<String> args) {
  print('late fullName is being initialized');
  late final fullName = getFullName();
  final resolvedFullName = fullName;
  print('resolvedFullName = $resolvedFullName');
}

// Assign late variable to non late variable resolves late variable immediately

String getFullName() {
  print('getFullName() is called');
  return 'Kareem';
}
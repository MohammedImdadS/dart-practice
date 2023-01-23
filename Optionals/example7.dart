void main(List<String> args) {
  // never write code like this
  try {
    final String? firstName = null;
    print(firstName!);
  } catch (e) {
    print(e);
  }

  // try this instead 
  final String? firstName = null;
    print(firstName ?? 'do this if firstName is null');
}

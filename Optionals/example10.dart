void main(List<String> args) {
  String? getFullNameOptional() {
    // return 'Foo Bar'; // this one also valid in this case
    return null;
  }

  String getFullName() {
    return 'Foo Bar';
    // return null is not valid in this case 
    // because it's not optional return as aboe
    //! return null; 
  }

  final String fullName = getFullNameOptional() ?? getFullName();
  print(fullName);

  final someName = getFullNameOptional();
  someName.describe();
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('This Object is null');
    } else {
      print('$runtimeType: $this');
    }
  }
}
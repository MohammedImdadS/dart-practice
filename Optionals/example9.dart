void main(List<String> args) {
  String? lastName;
  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();

  if (lastName?.contains('Bar') ?? false) {
    print('last name contains Bar');
  }
  if (lastName?.contains('Bar') == true) {
    print('last name contains Bar');
  }
}

// '?.' is used to access the properties of nullable values
// '??' iis used to took the value of rhs if the value to the lhs is null
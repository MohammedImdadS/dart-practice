void main(List<String> args) {
  final String? firstName = null;
  // lenght property is not accessible at this point because of optional firstName
  // final int length = firstName.length;

  if (firstName == null) {
    print('firstName value is null');
    // lenght property is not accessible at this point because of optional firstName
    // final int length = firstName.length; //! because the condition is checking for null is true
  } else {
    // But here lenght property is accessible at this point 
    //because of optional firstName is already checked for null in if statement above
    final int length = firstName.length;
    print(length);

  }
}
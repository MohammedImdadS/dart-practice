void main(List<String> args) {
  final abdulMalik = Peson(firstName: 'Abdul', lastName: 'Malik');
  final abdulKhuddus= Peson(firstName: 'Abdul', lastName: 'Khuddus');

  print(abdulMalik.fullName);
  print(getFullName(abdulKhuddus));
}

//* Acceptting mixin as data type in function
String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName,HasLastName {
  String get fullName => '$firstName $lastName';
}

class Peson with HasFirstName, HasLastName, HasFullName{
  // Observe that in mixin it has get keyword in firstname property 
  // but in implementation it's final its acceptted 
  // here its fullfilling the contract of getter of mixin
  @override
  final String firstName;

  @override
  final String lastName;

  Peson({required this.firstName, required this.lastName});

}
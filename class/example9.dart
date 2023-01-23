//* inheritance
//! constructor are special methods not inherited by default
//! All methods are inherited unless special methods
void main(List<String> args) {
  final mom = Mom();
  print(mom.role);
  
  final dad =  Dad();
  print(dad.role);
}

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;

  const Person({
    required this.role,
  });
}

class Mom extends Person {
// The constructor person class is not inherited by default in mom class 
// but it is inherited manually using super
const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
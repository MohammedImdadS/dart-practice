 ///* '??='(compound nullaware operator)  
///* it tooks the value of right side and  assign to left side if left is null 

void main(List<String> args) {
  // Optional data types in dart for variables are by default initialized to null
  String? name;
  print(name); // prints null
  
  // null aware compound assignment operator
  // if name is null then assigns Bar to the name 
  name ??=  'Bar'; // prints Bar
  print(name);
  
  // Here name is not null now and the output is Bar, 
  // The left operand can't be null, so the right operand is never executed.
  // name ??= 'Foo'; above error occurs if uncomment the code
  print(name);
}

void doSomeThing(String? one, String? two) {
  // Dart analysis won't  works
  // Here one can be null or two can be null or both can be null 
  // if one is null then assign two value to one 
  // However both could also be null but it's fine 
  // because one is a nullable data type and it can be assign to another nullable data type or vice versa
  one ??= two;
}
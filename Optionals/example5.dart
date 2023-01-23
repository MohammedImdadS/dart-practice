void main(List<String> args) {
  String? lastName;
  // The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  // print(lastName.length);

  // to get ride of the error we have assign ? after lastName as shown
  print(lastName?.length); 

  String? nullName;
  // '??='(compound nullaware operator)  
  // it tooks the value of right side and  assign to left side if left is null 

  // '??' (nullaware operator) 
  //it takes the value of rhs and uses or returns it only if lhs is null
  
  print(nullName ?? 'Foo'); // prints Foo
  print(nullName ?? lastName); // prints null
  print(nullName ?? lastName ?? 'bar'); // prints bar
  print(nullName); // prints null
}
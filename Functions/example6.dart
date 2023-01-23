void main(List<String> args) {
  doSomthingWithAge(age: 20);
  doSomthingWithAge(age: null); //* acceptable because of optional type parameter at function side
  print('-------peron with optional parameters-----------');
  describePerson(null,null);
  describePerson('foo',20);
  //! describePerson(); //! not acceptable
  print('-------peron with required optional parameters------------');
  describePerson2();
  describePerson2(name: 'bar');
  describePerson2(age: 40);
  describePerson2(name: 'foo', age: 12);
  describePerson2(age: 24, name: 'foo');
   //! describePerson2(null,null); //! not acceptable

}

void doSomthingWithAge({required int? age}) {
  print(age);
}

void describePerson(String? name, int? age) {
  print('Your $name, your $age years old');
}

void describePerson2({String? name, int? age}) {
  print('Your $name, your $age years old');
}
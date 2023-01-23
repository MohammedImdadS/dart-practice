void main(List<String> args) {
  // first print Before
  print('Before'); 

  // Late function won't call's until it's name is used. like print(name)
  // If you remove late keyword it prints 'Function is called'.
  late String name = provideName();

  // next it  print after
  print('After');

  // If you uncomment this it will print 'Function is called'
  // String name1 = provideName();
  print('Last');

  print(name); // name is called at this point 
  
}

String provideName() {
  print('Function is called');
  return 'Foo Bar';
}
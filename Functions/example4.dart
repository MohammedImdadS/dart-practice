void main(List<String> args) {
  greet();
  //** If a function of type is void we have to call like this greet() 
  //* we can't assign the result like this*/
  // final value = greet();//! this is fine but its value cannot use it shows error at point 
  // print(value);//! uncomment this it shows error that expression has a type of 'void' so its value can't used

}

void greet() {
  print('greetings');
}
void main(List<String> args) {
  final bla = Has2Feet();
  print(bla);
  //! run function is not available at the instance of Has2Feet class
  // bal.run();

  print('---------');
  //* As Human class is extends class Has2Feet 
  //* we can use CanRun mixin functionalities with Human class like below
  Human().run(); 


  
}

class Has2Feet {
  const Has2Feet();
}

//* A mixin on top of Class Has2Feet
//* This CanRun available on any type that extends the Has2Feet
//* we can't use run function of CanRun mixin, on instance of Has2Feet class 
mixin CanRun on Has2Feet {
  void run() {
    print('$runtimeType is running');
  }
}

//! We can't use CanRun mixin without extending Has2Feet class
// class Has2Bird with CanRun{ //* not valid
// }
//! But this CanRun mixin can be used, by extending the Has2Feet class only
class Human extends Has2Feet with CanRun {
  const Human();
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet  {
  const Fish();
}

//! We can't use CanRun mixin without extending Has2Feet class
// class Fishes extends HasNoFeet with CanRun {
//   const Fishes();
// }
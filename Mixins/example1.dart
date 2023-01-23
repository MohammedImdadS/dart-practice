//* Mixins are separate entities that can bring functionality to existing classes enumerations

void main(List<String> args) {
  final person = Person();
  person.jump(speed: 10.0);
  person.walk(speed: 5.0);
}

//** To perform hierechy class */

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at the speed $speed');
    // We can access the HasSpeed speed property [ex. this.speed is HaSpeed.speed]
    this.speed = speed; 
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is waling at the speed $speed');
    // We can access the HasSpeed speed property [ex. this.speed is HaSpeed.speed]
    this.speed = speed; 
  }
}

// To access mixins use with keyword
// If your using mixin you have to implement the property of the mixins 
// [ex.override speed property of HasSpeed mixin]
class Person with HasSpeed, CanJump, CanWalk{
  @override
  double speed;
  Person() : speed =2;
}
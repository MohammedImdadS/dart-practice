//* Methods of class */
//! These functions that are created in class level they are called as methods,
//! As along as they are not static function they can be called by instance of class

//! to call this function we have to instanciate class first


void main(List<String> args) {
  final car = Car();
  car.drive(speed: 20);
  print('Speed is ${car.speed}');
  car.drive(speed: 40);
  car.stop();
}
class Car {
  int speed = 0;
   // to call this function we have to instanciate class first
  void drive({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping...');
    print('Stoppped');
  }
}
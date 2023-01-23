//* Setters in Class
//! Getter simply return the speed But the Setter set the speed
void main(List<String> args) {
  final car = Car();
  try {
    car.drive(speed : 20);
    car.drive(speed : -1);
  } catch (e) {
    print(e);
  }

}
class Car {
  int _speed = 0;
  int get speed => _speed;
  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception('Speed cannot be negative');
    } else {
      this._speed = newSpeed;
    }
  }

  void drive({required int speed}) {
    this.speed = speed; // Setting the speed value for setter method
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping..');
    print('Stoppped');
  }
}
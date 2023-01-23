import 'dart:async';

/// Strean Controllers 
/// Strean Controllers is an object that can add values and read values
/// stream is read only
void main(List<String> args) async{
  final controller = StreamController<String>();
  controller.sink.add('cool');
  controller.sink.add('world');
  await for(final value in controller.stream) {
    print(value);
  }
  
}




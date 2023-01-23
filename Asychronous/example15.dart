import 'dart:async';

/// Broadcast stream
/// In broadcast stream multiple listener can lsen and cpnsume at same time
/// where as in non-broadcast stream only one listener can lisen at a time
void main(List<String> args) async {
  await nonBroadcastStreamExample();
  await broadcastStreamExample();
}

/// Stream is listen once
Future<void> nonBroadcastStreamExample() async {
  final controller = StreamController<String>();
  controller.sink.add('Kar');
  controller.sink.add('Naz');
  controller.sink.add('Jar');

  /// output of try catch is
  /// Kar
  /// Bad state: Stream has already been listened to.
  try {
    await for (final name in controller.stream) {
      print(name);
      await for (final name in controller.stream) {
        print(name);
      }
    }
  } catch (e) {
    print(e);
  }
}

/// Stream islisten more than  once
Future<void> broadcastStreamExample() async {
  late final StreamController<String> controller;
  controller = StreamController.broadcast();
  final sub1 = controller.stream.listen((name) { 
    print('sub1: $name');
  });
  final sub2 = controller.stream.listen((name) { 
    print('sub2: $name');
  });
  controller.sink.add('Kar');
  controller.sink.add('Naz');
  controller.sink.add('Jar');
  controller.close();
  
  controller.onCancel = () {
    print('onCancle');
    sub1.cancel();
    sub2.cancel();
  };
}
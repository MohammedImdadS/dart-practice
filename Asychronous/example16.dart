import 'dart:async';

/// Stream Transformer that errors out
/// if the input stream doesn't produce a vlue within a given number of seconds

void main(List<String> args) async {
  try {
    await for (final name in getName().withTimeoutBetweenEvents(
    const Duration(seconds: 3),
  )) {
    print(name);
  }
  } on TimeoutBetweenEventsException catch (e, stackTrace) {
    print('TimeoutBetweenEventsException: $e');
    print('stackTrace: $stackTrace');
  }
  
}

Stream<String> getName() async* {
  yield 'Foo';
  await Future.delayed(Duration(seconds: 1));
  yield 'Baz';
  await Future.delayed(Duration(seconds: 10));
  yield 'Boo';
}

extension WithTimeOutBetweenEvents<T> on Stream<T> {
  Stream<T> withTimeoutBetweenEvents(Duration duration) => transform(
        TimeoutBetweenEvents(duration: duration),
      );
}

class TimeoutBetweenEvents<E> extends StreamTransformerBase<E, E> {
  final Duration duration;

  const TimeoutBetweenEvents({required this.duration});

  @override
  Stream<E> bind(Stream<E> stream) {
    StreamController<E>? controller;
    StreamSubscription<E>? subscription;
    Timer? timer;

    controller = StreamController(
      onListen: () {
        subscription = stream.listen(
          (data) {
            timer?.cancel();
            timer = Timer.periodic(
              duration,
              (timer) {
                controller?.addError(
                  TimeoutBetweenEventsException('Timeout'),
                );
              },
            );
            controller?.add(data);
          },
          onError: controller?.addError,
          onDone: controller?.close,
        );
      },
      onCancel: () {
        subscription?.cancel();
        timer?.cancel();
      },
    );
    return controller.stream;
  }
}

class TimeoutBetweenEventsException implements Exception {
  final String message;

  TimeoutBetweenEventsException(this.message);
}

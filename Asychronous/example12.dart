import 'dart:async';

///! Handling errors in streams
void main(List<String> args) async {
  /// one way
   print('--one--');
  await for (final name in getNames().absorbErrorsUsingHandleError()) {
    print(name);
   
  }
   print('--two--');
  /// second way
  await for (final name in getNames().absorbErrorsUsingHandlers()) {
    print(name);
  }
   print('--three--');
  /// third way to handle error
  await for (final name in getNames().handleError((_, __) => {})) {
    print(name);
  }
   print('--four--');
  /// Fourth way
  await for (final name in getNames().absorbErrorsUsingTransformer()) {
    print(name);
  }
}

extension AbsorbErrors<T> on Stream<T> {
  Stream<T> absorbErrorsUsingHandleError() => handleError(
        (_, __) {}, // nothing is doing with errors
      );
  Stream<T> absorbErrorsUsingHandlers() => transform(
        StreamTransformer.fromHandlers(
          handleError: (_, __, sink) => sink.close(),
        ),
      );
  Stream<T> absorbErrorsUsingTransformer() => transform(
        StreamErrorAbsorber(),
      );
}

Stream<String> getNames() async* {
  yield 'Foo';
  yield 'Boo';
  throw 'All out of names';
}

/// Actual way of handlling errors in stream
class StreamErrorAbsorber<T> extends StreamTransformerBase<T, T> {
  // @override
  // Stream<T> bind(Stream<T> stream) => stream.handleError((_,__) {}); /// one way in here to handle errors

  @override
  Stream<T> bind(Stream<T> stream) {
    final controller = StreamController<T>();
    stream.listen(
      controller.sink.add,
      onError: (_) {},
      onDone: controller.close,
    );
    return controller.stream;
  }
}

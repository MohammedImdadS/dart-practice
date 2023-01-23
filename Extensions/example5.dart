const json = {
  'name': 'Foo Bar',
  'age': 20,
};

void main(List<String> args) {
  final String? ageAsString = json.find<int>(
    'age',
    (int age) => age.toString(),
  );
  print(ageAsString);

  final String hiiName = json.find<String>(
    'name',
    (String name) => 'Hii $name',
  )!;
  print(hiiName);

  // if you remove ? at final String and 
  // also if you add ! at end of find() 
  // it's shows exception
  // '!' at end means you shoud return at any cost but tere is no value of address so it shows exception
  // If you ? at final string point you should return at any cost 
  // but the function returns null which is not acceptable so it shows exception error.

  final String? address = json.find(
    'address',
    (String address) => 'You live at $address',
  );
  print('address = $address');
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}

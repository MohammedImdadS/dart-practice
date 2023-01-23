// Generic typedef

void main(List<String> args) {
  const momDad = {
    'mom': Person(),
    'dad': Person(),
  };

  const brotherAndSisterANdFish = {
    'brother': Person(),
    'sister': Person(),
    // commment and uncommment this and check the allValues type 
    // to know the generic it's has changed to
    'fish': Fish(),  
  };

  final allValues = [
    momDad,
    brotherAndSisterANdFish,
  ];

  descrbe(allValues);
}

// typedef BreathingThings = Map<String, CanBreath>; // this one also works
typedef BreathingThings<T extends CanBreath> = Map<String, T>;
// typedef BreathingThings<T> = Map<String, T>; // this one also works

void descrbe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call breath() on ${keyAndValue.key}');
      keyAndValue.value.breath();
    }
  }
}

mixin CanBreath {
  void breath();
}

class Person with CanBreath {
  const Person();
  @override
  void breath() {
    print('Person is breathing...');
  }
}

class Fish with CanBreath {
  const Fish();
  @override
  void breath() {
    print('Fish is breathing...');
  }
}
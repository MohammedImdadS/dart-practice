void main(List<String> args) {
  final value = 20;
  final timesFour = value.timesFour;
  print(timesFour);
  print('Hii'.reversed);
}

extension on int {
   int get timesFour => this * 4;
}

extension on String  {
  String get reversed => split('').reversed.join();
}
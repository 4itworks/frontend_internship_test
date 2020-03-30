import 'dart:math';

class UserAvatarColors {
  static List<int> get() {
    final rand = Random();
    var list = [
      _increaseRGBValue(rand.nextInt(256)),
      _increaseRGBValue(rand.nextInt(256)),
      _increaseRGBValue(rand.nextInt(256)),
    ];
    return list;
  }

  static int _increaseRGBValue(int value) {
    final increment = 100;
    final threshold = 100;
    if (value < threshold) {
      value += increment;
    }
    return value;
  }
}

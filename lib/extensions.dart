extension IntExtension on int {
  String toHexString() {
    return toRadixString(16).padLeft(2, '0').toUpperCase();
  }
}

extension IntArrayExtension on List<int> {
  String toHexString() {
    return fold('', (previousValue, element) => previousValue += element.toHexString());
  }
}
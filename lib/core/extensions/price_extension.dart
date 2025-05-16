extension PriceExtension on int {
  String formatPrice() {
    final str = toString();
    final buffer = StringBuffer();
    final length = str.length;

    for (int i = 0; i < length; i++) {
      buffer.write(str[i]);
      final pos = length - i - 1;
      if (pos % 3 == 0 && pos != 0) {
        buffer.write(' ');
      }
    }

    return buffer.toString();
  }
}

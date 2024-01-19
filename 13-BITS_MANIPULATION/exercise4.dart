class SumIntegers {
  int getSum(int a, int b) {
    int result = 0; //Variable para almacenar el result
    int carry = 0; //Variable para almacenar el carry

    for (int i = 0; i < 32; i++) {
      int firstBit = _getBit(a, i);
      int secondBit = _getBit(b, i);

      int sum = firstBit ^ secondBit ^ carry;
      result += _updateBit(result, i, sum);

      carry = (firstBit == 1 && secondBit == 1 ||
              firstBit == 1 && carry == 1 ||
              carry == 1 && secondBit == 1)
          ? 1
          : 0;
    }
    return result;
  }

  int _getBit(int n, int i) {
    return (n >> i) & 1;
  }

  int _updateBit(int n, int i, int bit) {
    int clearBitMask = ~(1 << i);
    return (n & clearBitMask) | (bit << i);
  }
}

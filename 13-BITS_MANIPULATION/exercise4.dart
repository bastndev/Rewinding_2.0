class SumIntegers {


  int _getBit(int n, int i) {
    return (n >> i) & 1;
  }

  int _updateBit(int n, int i, int bit) {
    int clearBitMask = ~(1 << i);
    return (n & clearBitMask) | (bit << i);
  }
}

class NumberOfOneBits {
  int numberOfOneBits(int n) {
    int bitCount = 0;

    while (n != 0) {
      bitCount += (n & 1);
      n >>>= 1;
    }
    return bitCount;
  }
}

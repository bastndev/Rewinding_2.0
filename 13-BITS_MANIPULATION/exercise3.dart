class NumberConversion {
  int numberOfBitsToFlipToConvert(int a, int b) {
    int numberOfBitsToFlip = 0;

    while (a != 0 || b != 0) {
      int bitFromA = a & 1;
      int bitFromB = b & 1;

      if (bitFromA != bitFromB) {
        numberOfBitsToFlip++;
      }
      a >>>= 1;
      b >>>= 1;
    }
    return numberOfBitsToFlip;
  }
}

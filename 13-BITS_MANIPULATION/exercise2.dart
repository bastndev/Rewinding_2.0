/* class ReverseInt {
  int reverseInt(int n) {
    for (int i = 0; i < 16; i++) {
      int firstBit = _getBit(n, i);
      int secondBit = _getBit(n, 31 - i);

      n = _updateBit(n, i, secondBit);
      n = _updateBit(n, 31 - i, firstBit);
    }
    return n;
  }

  int _getBit(int n, int i) {
    return (n >> i) & 1;
  }

  int _updateBit(int n, int i, int bit) {
    int clearBitMask = ~(1 << i);
    return (n & clearBitMask) | (bit << i);
  }
}

void main() {
  ReverseInt n = ReverseInt();

  int input = 43261596;
  print("Input: $input");

  int result = n.reverseInt(input);
  print("Reverse output: $result");
}
 */
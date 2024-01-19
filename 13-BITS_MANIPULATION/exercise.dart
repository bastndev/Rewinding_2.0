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

void main() {
  NumberOfOneBits n = NumberOfOneBits();

  int input = 8;
  print('Input: $input');
  
  int numberOfOnes = n.numberOfOneBits(input);
  print('Number of one bits: $numberOfOnes');
}

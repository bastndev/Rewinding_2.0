/* bool getBit(int num, int index) {
  int mask = (1 << index);
  return ((num & mask) != 0);
}
 */

bool getBit(int num, int index) {
  int mask = (1 << index);
  return ((num | mask) == num);
}

void main() {
  int number = 1010;
  int index = 2;
  bool result = getBit(number, index);
  print("Number: $result");
}

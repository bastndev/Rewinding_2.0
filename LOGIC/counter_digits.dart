void main() {
  int num = 99999999;

  if (num > 0 && num <= 9999) {
    if (num < 9) {
      print("The number have 1 digits");
    }
    if (num >= 10 && num <= 99) {
      print("The number have 2 digits");
    }
    if (num >= 100 && num <= 999) {
      print("The number have 3 digits");
    }
    if (num >= 1000 && num <= 9999) {
      print("The number have 4 digits");
    }
  } else {
    print("Wtf pls enter number, but inly 4 digits, Thanks!");
  }
}

/* void main() {
  int number = 21;

  if (number == 0) {
    print("Enter a number");
  } else if (number % 2 == 0) {
    print("The number: $number matched");
  } else {
    print("the number is unmatched");
  }
}
 */

void main() {
  int number = 9;

  if (number > 0) {
    if (number % 2 == 0) {
      print("The number is matched");
    } else {
      print("The number is unmatched");
    }
  } else {
    print("Enter a number positive");
  }
}

//-TODO: Boolean
/* void main() {
  bool active = true;
  // print("This is Active: $active");

  //Control structure

  if (active == true) {
    print("This is active");
  } else {
    print("Sorry is not active");
  }
} */

/* void main() {
  bool active = true;

  active = !active;
  //Control structure || Condition structure
  if (active == true) {
    print("This is active");
  } else {
    print("Sorry is not active");
  }
}
 */

void main() {
  bool active = true;

  active = !active;
  //equivalent
  if (active) {
    print("This is active");
  } else {
    print("Sorry is not active");
  }
}

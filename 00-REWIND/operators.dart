//Operators + - * ~/
//Math
/* void main() {
  int num = 30;
  num = num + 22;
  print(num);

  num = num % 5;
  print(num);
} */

//logical Operators == , != , <= , >=
/* void main() {
  int num = 30;
  num = num + 22;
  print(num);

  num = num % 5;
  if (num == 0) {
    print('Cero');
  } else {
    print("Is not Cero is: $num");
  }
} */

//Unity Operators
/* void main() {
  int number = 0;

  number = 5;
  print(number);

  ++number;
  print(number);

  number++;
  print(number);
}
 */

//-FIXME: Logic AND (&&) OR (||)
/* void main() {
  int number = 0;
  number = 202;

  if ((number > 200) && (number < 205)) {
    print("The number is 202");
  } else {
    print("False");
  }
} */
/* void main() {
  int number = 0;
  number = 202;

  if ((number > 200) && (number < 205) && (number == 202)) {
    print("The number is 202");
  } else {
    print("False");
  }
} */
// OR (||)
/* void main() {
  int number = 0;
  number = 201;

  if ((number > 200) && (number < 205) || (number == 202)) {
    print("The number is TRUE");
  } else {
    print("False");
  }
} */

//-FIXME: Bitwise OPerator
void main() {
  var a = 5;
  var b = 3;

  //8 4 2 1
  //0 1 0 1
  //0 0 1 1
//-- --- --
  //0 1 1 1

  var result = (a & b);
  print(result);

  result = (a | b);
  print(result);
}

// bubble sort
// sort by selection

//-FIXME: Static
/* class Counter {
  static int count = 0;

  Counter() {
    count++;
  }
}

void main() {
  Counter c1 = Counter();
  print(Counter.count);

  Counter c2 = Counter();
  print(Counter.count);

  print("$c1  $c2"); //commend this
} */

class MyClass {
  static void myStaticMethod() {
    print("This is a static method.");
  }
}

void main() {
  MyClass.myStaticMethod();
}

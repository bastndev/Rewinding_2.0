// --- -TODO: Loop while

/* void main() {
  int x = 5;

  while (x > 0) {
    x * 2;
  }
  print("aea mano $x");
}
 */

/* void main() {
  int x = 5;

  while (x < 10) {
    x = x * 2;
  }
  print("El valor final de x es: $x");
} */

/* void main() {
  int x = 5;

  do {
    x = x * 2;
  } while (x < 10);
  print("El valor final de x es: $x");
}
 */

/* void main() {
  int x = 5;

  while (x > 0) {
    x * 2;
  }
  print("aea mano $x");
}
 */

/* void main() {
  int x = 10;

  while (x != 10) {
    x += 10;
  }
  print(x);
}
 */

/* void main() {
  int x = 10;

  if (x != 10) {
    print("Error: La condición inicial ya es falsa, el bucle no se ejecutó.");
  } else {
    while (x != 10) {
      x += 10;
    }
    print(x);
  }
}
 */
/* void main() {
  int x = 5;

  while (x > 0) {
    x * 2;
  }
  print("The result is $x");
}
 */
/* void main() {
  int x = 5;

  while (x < 10) {
    x = x * 2;
  }
  print("El valor final de x es: $x");
} */

/* void main() {
  int x = 2;

  if (x > 4) {
    x = x * 2;
    print("Si se multiple $x");
  } else {
    print("No se multiple $x");
  }
}
 */

/* void main() {
  int x = 2;

  do {
    if (x > 4) {
      x = x * 2;
      print("Yes, it multiplies: $x");
    } else {
      print("No, it doesn't multiply: $x");
    }
  } while (x > 4);
} */

//--- -FIXME: Practice while
//It multiplies 2 by 2, equals 4, times 2 equals 8, times 2 equals 16, until finally it is greater than 10.
/* void main() {
  int x = 2;

  do {
    x = x * 2;
    print("aea mano");
  } while (x < 10);
  print("El valor final de x es: $x");
} */

//...las Condicienes van entre los parentesis  (condicion)
//--- -TODO: for (){}

/* void main() {
  for (int i = 0; i < 5; ++i) {
    print("Hello ${i}");
  }
}
 */

/* void main() {
  List<String> lyrics = ['a', 'e', 'i', 'o', 'u'];

  for (String lyric in lyrics) {
    print("Hello: $lyric");
  }

}
 */

/* void main() {
  List<String> lyrics = ['a', 'e', 'i', 'o', 'u'];

  lyrics.forEach(print);
} */

/* void main() {
  List<String> lyrics = ['a', 'e', 'i', 'o', 'u'];

  for (String lyric in lyrics) {
    if (lyric == 'u') {
      print("Hello: $lyric");
    }
  }
} */

/* void main() {
  List<String> animals = ['cat', 'dog', 'dac'];

  for (String animal in animals) {
    if (animal == 'cat') {
      print("I have a $animal");
    }
  }
} */

/* void main() {
  List<String> animals = ['cat', 'dog', 'dac'];
  bool foundCat = false;

  for (String animal in animals) {
    if (animal == 'rabbit') {
      foundCat = true;
    }
  }

  if (foundCat) {
    print("I have a cat");
  } else {
    print("I don't have a cat");
  }
} */

/* void main() {
  List<String> animals = ['cat', 'dog', 'dac'];
  bool foundCat = animals.contains('rabbit');

  if (foundCat) {
    print("I have a cat");
  } else {
    print("I don't have a cat");
  }
} */

//--- --- -TODO: while (condicion ) {realizar}

/* void main() {
  int i = 0;

  while (i < 5) {
    print(i);
    i++;
  }
} */
//--- --- -TODO: do  while (condicion ) {realizar}

/* void main() {
  int number = 1;

  do {
    print("hello $number");
    number++;
  } while (number < 5);
} */

// --- -FIXME: Practice

void main() {
  String g = 'My', o = 'an', m = 'mar';

  print("${g + o + m} <3");
}
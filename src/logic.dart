// Enfoque iterativo para calcular la suma de los elementos de una lista
/* int sumIterative(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum;
}

// Enfoque recursivo para calcular la suma de los elementos de una lista
int sumRecursive(List<int> numbers, int index) {
  if (index == numbers.length) {
    return 0;
  }
  return numbers[index] + sumRecursive(numbers, index + 1);
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  
  // Enfoque iterativo
  int sumIter = sumIterative(numbers);
  print('Sum (Iterative): $sumIter');
  
  // Enfoque recursivo
  int sumRec = sumRecursive(numbers, 0);
  print('Sum (Recursive): $sumRec');
} */

// TODO: practice tomorrow (Big O) Print First Number

/* void printFirstElement(List<double> numbers) {
  if (numbers.isNotEmpty) {
    print(numbers.last);
  }
}

void main() {
  List<double> myList = [9.1, 2, 3, 4, 5];
  printFirstElement(myList); // Llamada a la función para imprimir el primer elemento
} */

// TODO: Print Last Number 2 (Big O)

/* void printLastElement(List<int> numbers) {
  if (numbers.isNotEmpty) {
    print(numbers.last);
  }
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  printLastElement(myList); // Llamada a la función para imprimir el último elemento
}
 */
// TODO: Probando
/* 
void printLastElement(List<int> numbers) {
  if (numbers.isNotEmpty) {
    print(numbers[numbers.length - 1]);
  }
}
void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  printLastElement(myList); // Llamada a la función para imprimir el último elemento
} */

// FIXME: Practice
/* void main() {
  final List<int> array = [8, 2, 3, 4, 5];
  int test(List<int> n) {
    return n[0];
  }
  
  print(test(array));
} */

// TODO: Me
/* void printLastElement(List<int> numbers){
  if(numbers.isNotEmpty){
    print(numbers.last);
  }
}
void main (){

  List<int> myList = [ 1,2,3,4,5,6];
  printLastElement(myList);
} */
// TODO:

/* void printElement(List<double> number) {
  if (number.isNotEmpty) {
    int middleIndex = number.length ~/2;
    print(number[middleIndex]);
  }else{
    print("Void" );
  }
}

void main() {
  List<double> myList = [1.9, 2.4, 3.4, 4.6, 5.5, 6.6, 9.9];
  printElement(myList);
} */
// FIXME: Big O (1) No recomiendp pero esta ahi 

/* void printFirstElement(List<int> numbers) {
  if (numbers.isNotEmpty) {
    print(numbers[2]);
  } else {
    print("Empty list");
  }
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  printFirstElement(myList);
} */

// TODO: --- --- --- --- -- - Gtp 1
/* import 'dart:collection';

void main() {
  // Crear una nueva tabla hash utilizando la clase HashMap
  HashMap<String, int> tablaHash = new HashMap<String, int>();

  // Agregar elementos a la tabla hash
  tablaHash['Manzana'] = 10;
  tablaHash['Naranja'] = 5;
  tablaHash['Plátano'] = 20;

  // Acceder a los valores en la tabla hash
  print(tablaHash['Manzana']);  // Imprime: 10
  print(tablaHash['Naranja']);  // Imprime: 5
  print(tablaHash['Plátano']);  // Imprime: 20

  // Actualizar el valor de un elemento en la tabla hash
  tablaHash['Manzana'] = 15;

  // Eliminar un elemento de la tabla hash
  tablaHash.remove('Naranja');

  // Verificar si un elemento existe en la tabla hash
  print(tablaHash.containsKey('Manzana'));  // Imprime: true
  print(tablaHash.containsKey('Naranja'));  // Imprime: false

  // Recorrer la tabla hash
  tablaHash.forEach((key, value) {
    print('$key: $value');
  });
} */

// TODO: --- -- --- -- -- --- --- GPT 2
import 'dart:collection';

void main() {
  // Create new table using hash Map. O(1)
  HashMap<String, int> tablaHash = new HashMap<String, int>();

  // add elements od the table hash
  tablaHash['Apple'] = 10;
  tablaHash['Orange'] = 5;
  tablaHash['Banana'] = 20;
  tablaHash['Pear'] = 2;

  // Print the table hash
  tablaHash.forEach((key, value) {
    print('$key: $value');
  });
}

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

void printElement(List<double> number) {
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
}

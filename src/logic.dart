// Enfoque iterativo para calcular la suma de los elementos de una lista
int sumIterative(List<int> numbers) {
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
}
// TODO: practice tomorrow (Big O)
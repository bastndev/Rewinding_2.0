/* void main (){

  print("hello World");
} */
// FIXME: Practice (JAVA)

/* int sum = 0;
int result = 0;

for(int val : array){
  sum += val;
}

for (int x : array ){
  for (int y : array){
    result += x * y - sum;
  }
}
 */
// TODO:: Practice (DART)
/* void main() {
  int sum = 0;
  int result = 0;

  List<int> array = [1,2,3,-4];

  for (int val in array) {
    sum += val;
  }

  for (int x in array) {
    for (int y in array) {
      result += x * y - sum;
    }
  }

  print(result);
}
 */

// TODO:Complexity (Quicksort)
/* void main() {
  List<int> numbers = [7, 2, 1, 6, 8, 5, 3, 4];
  quickSort(numbers, 0, numbers.length - 1);
  print(numbers);
}

void quickSort(List<int> array, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(array, low, high);
    quickSort(array, low, pivotIndex - 1);
    quickSort(array, pivotIndex + 1, high);
  }
}

int partition(List<int> array, int low, int high) {
  int pivot = array[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (array[j] <= pivot) {
      i++;
      swap(array, i, j);
    }
  }

  swap(array, i + 1, high);
  return i + 1;
}

void swap(List<int> array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
} */
//TODO: -- --- -- -- -- -- Horas dedicadas al estudio y  horas del curso
import 'dart:io';

void main() {
  double courseDuration = 0.0;
  double dailyTime = 0.0;

  courseDuration = double.parse(stdin.readLineSync()!);
  dailyTime = double.parse(stdin.readLineSync()!);

  double dailyTimeHours = dailyTime / 60;
  int requiredDays = (courseDuration / dailyTimeHours).ceil();

  print("The course will take approximately $requiredDays days to complete.");
}


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
/* import 'dart:io';

void main() {
  double courseDuration = 0.0;
  double dailyTime = 0.0;

  courseDuration = double.parse(stdin.readLineSync()!);
  dailyTime = double.parse(stdin.readLineSync()!);

  double dailyTimeHours = dailyTime / 60;
  int requiredDays = (courseDuration / dailyTimeHours).ceil();

  print("The course will take approximately $requiredDays days to complete.");
} */

// TODO: DiegoVeloper

/* void main() {
  bool evaluate(int sum, List<int> values) {
    final Set<int> complements = Set<int>();
    for (int i = 0; i < values.length; i++) {
      final int currentValue = values[i];
      if (complements.contains(currentValue)) return true;
      complements.add(sum - currentValue);
    }
    return false;
  }

  bool result = evaluate(8, [1, 2, 3, 4, 5, ]);
  print(result);
} *///Si Los caracteres (a b c d) = true, (a a b c d d) = false

// FIXME: First example

/* void main (){

  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers);
} */
// FIXME: Second example

/* void main(){

  List<String> country = ['Peru', 'Mexico', 'Colombia'];
  print('${country[0]} is Lamtam');
} */
// FIXME: Second example

/* void main (){

  List<double> number =[1.5, 2.5, 3.5, 4, 5];
  List<String> country =['Chile', 'Spain', 'UUEE'];

  print(number);
  print('${number[2]} is ${country[0]}');


  number.add(200);
  number.add(10);

  country.addAll(['Argentina', 'Peru']);

  print(number);
  print('My country is: ${country[4]}');
  print(country.length);
} */
// FIXME: lEARGING  Maps

/* void main() {
  Map<String, dynamic> person = {
    'name': 'John',
    'age': 30,
    'city': 'New York'
  };
  print(person); // {name: John, age: 30, city: New York}
} */
// FIXME: lEARGING  Map

/* void main(){

  String property = 'single';
  Map<String, dynamic> person = {
    'name': 'Lucas',
    'age' : 20,
    'single': true
  };
  print(person ['name']);
  print(person ['age']);
  print(person [property]);

  Map<int, String> people = {
    1:'Lucas',
    2:'Carlos',
    9:'Maria',
  };
  people.addAll({4:'Liz'});

  print(people);
  print(people[4]);
  
} */

// TODO: practice again

/* void main (){

  List<String> names = ['lucas', 'Maria']; 
  print(names[1]);

  String test = 'Single';
  Map<String, dynamic> number = {
    'name' : 'Marcos',
    'age' : 20,
    'Single' : true
  };
  print("My name is ${number['name']} I have ${number['age']} years old, and I'm Single? ${number[test]}  " );
  
} */
//TODO: const O(1) || or ||  lineal O(n)

/* 
  bool hasRepeatedLetters(List<String> alphabet) {
  Set<String> uniqueLetters = Set<String>();
  
  for (String letter in alphabet) {
    if (uniqueLetters.contains(letter)) {
      return false;
    }
    uniqueLetters.add(letter);
  }
  
  return true;
}

void main() {
  List<String> alphabet = ['a', 'b', 'c', 'd', 'e'];
  
  bool hasRepeated = hasRepeatedLetters(alphabet);
  print(hasRepeated);
} */
// FIXME: Eres malito

//-- -- - The formula --- --- 
/* bool letters(List<String> alphabet) {
  Set <String> uniqueLetters = Set<String>();

  for(String letter in alphabet){
    if(uniqueLetters.contains(letter)){
      return false;
    }
    uniqueLetters.add(letter);
  }
  return true;
}
// -- -- -- -- Data -- -- --- --

void  main(){

  List<String> alphabet = ['a','b','c','d','d',];
  bool rpLetters = letters(alphabet);
  print(rpLetters);
} */

//TODO: Practice number 2 || 7. Ejercicio 2 - Arrays, Strings y Tablas Hash

/* void main (){

  List <int> numbers = [1, 3, 5, 6, 72,];
  int sum = 3;

  for (int num in numbers){
    sum += num;
  }
  print("The sum all is: $sum");
} */

//FIXME: Practice sum Hash
/* void main (){

  List<double> decimals = [1.3, 4.4, 8.0];
  double sum = 0.3;

  for (double num in decimals){
    sum += num;
  }
  print("The subtraction is: ${sum }");
} */
//TODO: GPT bigger number

/* void main() {
  List<int> numbers = [10, 300, 8, 5, 12];
  int max = numbers[0];

  for (int num in numbers) {
    if (num > max) {
      max = num;
    }
  }

  print("The largest number on the list is: $max");
} */
//FIXME: bigger number 2 (in) = Repetir

void main (){

  List<int> numbers = [10, 2, 3, 40, 20];
  int max = numbers[0];

  for (int num in numbers){
    if(num > max){
      max = num;
    }
  }
  print("The bigger number is: $max");
}
//TODO: bigger number 2 (in) = Repetir
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
} */ //Si Los caracteres (a b c d) = true, (a a b c d d) = false

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

/* void main (){

  List<int> numbers = [10, 2, 3, 40, 20];
  int max = numbers[0];

  for (int num in numbers){
    if(num > max){
      max = num;
    }
  }
  print("The bigger number is: $max");
} */
//TODO: Contar la cantidad de vocales en un string

/* void main() {
  String text = "Hola, cómo estás?";
  int vowelCount = 0;
  String vowels = "aeiouAEIOU";

  for (int i = 0; i < text.length; i++) {
    if (vowels.contains(text[i])) {
      vowelCount++;
    }
  }

  print("El número de vocales en el texto es: $vowelCount");
} */
//FIXME: Exercise

/* void main(){

  String text = "Hello world";
  int vowelCount = 0;
  String vowels = "aeiouAEIOU";

  for (int i = 0; i < text.length; i++){
    if(vowels.contains(text[i])){
      vowelCount++;
    }
  }
  print("The number of vowels in the text is: $vowelCount");
} */

//TODO:  Invertir un string

/* void main() {
  String originalText = "Whats up";
  String reversedText = "";

  for (int i = originalText.length - 1; i >= 0; i--) {
    reversedText += originalText[i];
  }

  print("Original text: $originalText");
  print("Reverse text: $reversedText");
} */
//FIXME:  Reverse text (los datos de originalText, pasa a reverseText)
/* 
void main (){

  String originalText = "Hello";
  String reverseText = "";

  for (int i = originalText.length - 1; i >= 0; i--){
    reverseText += originalText[i];
  }
  print('Reverse text is: $reverseText');
}
 */

//TODO: Sum 2 number for target, exercise 1

/* void findPairs(List<int> numbers, int targetSum) {
  Map<int, int> pairs = {};

  bool foundPair = false;

  for (int i = 0; i < numbers.length; i++) {
    int complement = targetSum - numbers[i];
    if (pairs.containsKey(complement)) {
      print('${numbers[i]} and ${pairs[complement]} added $targetSum');
      foundPair = true;
    }
    pairs[numbers[i]] = numbers[i];
  }

  if (!foundPair) {
    print('null');
  }
}

void main() {
  List<int> numbers = [9, 2, 5, 6];
  int targetSum = 11;

  findPairs(numbers, targetSum);
} */

// TODO: Sum 2 number for target, exercise 2
/* void main() {
  List<int> nums = [2, 9, 6, 5, 4];
  int target = 10;

  TwoSum twoSumObj = TwoSum();
  List<int>? result = twoSumObj.twoSum(nums, target);

  if (result != null) {
    int num1 = nums[result[0]];
    int num2 = nums[result[1]];
    print("The numbers that add up to the goal are: $num1 and $num2");
  } else {
    print("null");
  }
}

class TwoSum {
  List<int>? twoSum(List<int> nums, int target) {
    if (nums.length < 2)
      return null;

    Map<int, int> compMap = {};

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (compMap.containsKey(complement))
        return [i, compMap[complement]!];
      compMap[nums[i]] = i;
    }

    return null;
  }
} */
// FIXME: Practice alone || Alone ;

/* void main (){

  String mayer = "Mayer";

  print(mayer);
}
 */

/* void main (){

  int num1 = 10;
  int num2 = 20;
  
  int result = num1 + num2;

  print("The result is: $result");
} */

/* void main (){

  String melon = "melon";
  String mayorca = "Mayorca";

  print("Hello $melon, Hi $mayorca");
} */

/* void main  (){

  String change = "Bastian";

  int result = change.length; 

  print("The result is $result");
} */
// FIXME: length || Practice

/* void main (){

  List<double> number = [1.7, 2.4, 3.2, 4.3, 5.1];

  int result = number.length;

  print("These result is: $result"); 
} */

//FIXME: bool isEmpty

/* void main (){

  List<int> number = [1];
  
  bool thisVoid = number.isEmpty;

  print(thisVoid);
} */

/* void main() {
  List<int> number = [1];

  bool thisVoid = number.isNotEmpty;

  print(thisVoid);
}
 */

//TODO: Diegoveloper
/* void main() {
  String getCalories(String fruit) {
    const map = {
      'strawberry': '65 calories',
      'orange': '65 calories',
      'banana': '65 calories',
      'apple': '65 calories',
    };
  }
  return map[fruit] ?? 'N/A';
} */

/* void main() {
  print(Fruit.strawberry.calories); // Output: 65 calories
  print(Fruit.mango.calories);      // Output: 60 calories
  print(Fruit.banana.calories);     // Output: 89 calories
  print(Fruit.pear.calories);       // Output: 89 calories
}

enum Fruit {
  strawberry,
  mango,
  banana,
  pear,
}

extension FruitCalories on Fruit {
  String get calories {
    switch (this) {
      case Fruit.strawberry:
        return '65 calories';
      case Fruit.mango:
        return '60 calories';
      case Fruit.banana:
      case Fruit.pear:
        return '89 calories';
      default:
        return 'Unknown';
    }
  }
}
 */

// TODO: developer D
/* void main() {
  print(getFruitCalories(Fruit.strawberry)); // Output: 65 calories
  print(getFruitCalories(Fruit.mango));      // Output: 60 calories
  print(getFruitCalories(Fruit.banana));     // Output: 89 calories
  print(getFruitCalories(Fruit.pear));       // Output: 89 calories
  print(getFruitCalories(Fruit.pears));       // Output: 89 calories
}

enum Fruit {
  strawberry,
  mango,
  banana,
  pear,
  pears,
}

Map<Fruit, String> fruitCalories = {
  Fruit.strawberry: '65 calories',
  Fruit.mango: '60 calories',
  Fruit.banana: '89 calories',
  Fruit.pear: '19 calories',
};

String getFruitCalories(Fruit fruit) {
  return fruitCalories[fruit] ?? 'Unknown';
} */

//FIXME: EmJoy Practice Melody

/* void main (){

  List<String> nameLatam = ['Maria', 'Luisa', 'Pedro'];

  List<int> ageLatam = [12, 30, 90];

  print("This girl is called ${nameLatam[0]} her has ${ageLatam[ 2]} ");
}
  */

//FIXME: Practice number 2

/* void main(){

  List<String> names =[ 'Pedro', 'Berth', 'Luis' ];

  Map<String, double> que = {
    'age' : 21,
    'tall' : 1.50
  };
  print("My mane is ${names[0]} and y have ${que['age']} ant, I tall ${que['tall']} ");
}
 */

//TODO: Gpt best
/* void main() {
  List<String> names = ['Pedro', 'Berth', 'Luis'];

  Map<String, double?> que = {
    'age': 21,
    'tall': 1.50
  };

  String formattedAge = que['age']?.toStringAsFixed(0) ?? 'N/A';
  String formattedTall = que['tall']?.toStringAsFixed(2) ?? 'N/A';

  print("My name is ${names[0]} and I am $formattedAge years old, I am ${formattedTall} meters tall.");
} */

//FIXME: Practice

/* void main  (){

  String names = "Luisa";
  String reverseName = "";

  for (int i = names.length -1; i>= 0; i--){
    reverseName += names[i];
  }
  print("Your Name in reverse is: $reverseName ");
} */

/* void main(){

  String names = "calla mrd";
  String reverseNIckName = "";

  for (int i = names.length -1; i>= 0; i--){
    reverseNIckName += names[i];
  }
  print("$reverseNIckName");
} */

/* void main() {
  List<String> names = ['Maria', 'Luisa', 'Marcos'];

  for (int i = 0; i < names.length; i++) {
    if (names[i] == 'Maria') {
      String reversedName = '';

      for (int j = names[i].length - 1; j >= 0; j--) {
        reversedName += names[i][j];
      }

      print("Reversed name: $reversedName");
    } else {
      print(names[i]);
    }
  }
} */

// TODO: Email, practice
/* void main (){

  String name = "Lucas";

  print("Real name of Maria is $name");
} */

// FIXME: Practice final  | no swap age or name
/* 
void main() {
  final int age = 30;
  final String name = "Juan";

  print("Your name is $name nad you have $age");

} */

// TODO: O(1) nad O(n)
/* void main() {
  int getFirstElements(List<int> numbers) {
    return numbers[0];
  }
}

void imprimirElementos(List<int> numeros) {
  for (int numero in numeros) {
    print(numero);
  }
}
 */

//TODO: Anagramas =  anagrams FIXME: array = List

/* bool areAnagrams(String str1, String str2) {
  if (str1.length != str2.length) {
    return false;
  }

  List<String> chars1 = str1.split('')..sort();
  List<String> chars2 = str2.split('')..sort();

  String sortedStr1 = chars1.join();
  String sortedStr2 = chars2.join();

  return sortedStr1 == sortedStr2;
}

void main() {
  String word1 = "roma";
  String word2 = "amor";

  if (areAnagrams(word1, word2)) {
    print('$word1 y $word2 son anagrams.');
  } else {
    print('$word1 y $word2 no son anagrams.');
  }
} */
//TODO: Anagramas =  anagrams FIXME: array = List

//TODO: bool Validation
/* void main (){

  bool x = true;

  if(x == true){
    print("Epale mi rey");
  }else( ){
    print("aea tas malito ");
  };
} */

//FIXME: bool Validation

void main(){

  bool x = true;

  x = !x;

  if(x == true){
    print("Epale Mi rey");
  }else{
    print("aea malito");
  }
}
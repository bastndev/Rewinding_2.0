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

/* void main(){

  bool x = true;

  x = !x;

  if(x == true){
    print("Epale Mi rey");
  }else{
    print("aea malito");
  }
} */
//FIXME: bool Validation

/* void main(){

  bool x = true;

  // x = !x;
  print(x);
  
  if(!x == true){
    print("Epale Mi rey");
  }else{
    print("aea malito");
  }
} */
//TODO: Anagramas =  anagrams FIXME: array = List
//TODO: Limites List
/* void main(){

  List<int> number = [1,2,3,4,5];

  number.add(10);

  print(number);

  List othersNumbers = List.filled(7, null, growable: false);

  othersNumbers[0]=1;
  othersNumbers[1]=2;
  othersNumbers[2]=3;
  othersNumbers[3]=4;
  othersNumbers[4]=5;
  othersNumbers[5]=6;

  print(othersNumbers);
} */

//FIXME: Map Update

/* void main (){

  Map pokemon = {
    'color': 'red',
    'age': '23',
    'power': 'electric',
  };

  print("Pikachu is color ${pokemon['color']} they have ${pokemon['age']} years old and is the type ${pokemon['power']} ");
}
 */
//TODO: Map Update

/* void main (){

  String name = 'name';
  
  Map<String, dynamic> pokemon = {
    'name' :'Pikachu',
    'life' : 100,
    'gender': true
  };
  print(pokemon[name]);
  print(pokemon['life']);
  print(pokemon['gender']);
} */

//FIXME: Maps practice
/* void main (){

  Map<int, String> coach ={
    1:'Lucas',
    2:'Pedro',
    3:'Merry',
  };
  print(coach[1]);

  coach.addAll({
    4:'Miguel'
  }); 
  print(coach[4]);
}
 */

//TODO: Practice GPT
/* class Book {
  String title;
  String author;
  String genre;

  Book(this.title, this.author, this.genre);
}

List<Book> books = [
  Book("The Great Gatsby", "F. Scott Fitzgerald", "Classic"),
  Book("To Kill a Mockingbird", "Harper Lee", "Classic"),
  Book("1984", "George Orwell", "Science Fiction"),
  Book("The Hunger Games", "Suzanne Collins", "Science Fiction"),
  Book("The Catcher in the Rye", "J.D. Salinger", "Classic"),
  Book("The Hobbit", "J.R.R. Tolkien", "Fantasy"),
];

Map<String, List<Book>> booksByGenre = {}; // Not nullable

void main() {
  // (Step 2) Create the list of books
  // (Step 3) Organize books into a Map
  for (var book in books) {
    if (!booksByGenre.containsKey(book.genre)) {
      booksByGenre[book.genre] = [];
    }
    booksByGenre[book.genre]?.add(book); // Use the conditional operator (?.) to handle potential null value
  }

  // (Step 4) Print the results
  for (var genre in booksByGenre.keys) {
    print("Genre: $genre");
    for (var book in booksByGenre[genre]!) { // Add a null check using the non-null assertion operator (!)
      print("  - ${book.title} by ${book.author}");
    }
    print(""); // Add an empty line for separation
  }
} */
// FIXME: Function
/* void main (){
  greet(name:'Lucas', text: 'Hello' );
}

void greet({required String text ,required String name }) {
  print("$text $name");
}
 */

//FIXME: String
/* void main (){
  final message =  greet2(name:'Lucas', text: 'Hello' );
  print(message);
}

String greet({ required String text ,required String name }) {
  return "$text $name";
}
String greet2({ required String text ,required String name }) => "$text $name"; */

/* void main (){
  final chapa = names(text: 'Lucas', name: 'Juan');
  print(chapa);

}

String names ({required text, required name}) => "$text $name"; */

//TODO: Practice
/* void main() {
  final chapa = generateNickname(firstName: 'Diego', lastName: 'Juan');
  print(chapa);
}

String generateNickname({required firstName, required lastName}) {
  String nickname = firstName[0] + lastName[0];
  return nickname;
} */
//TODO:
/* void main() {
  final chapa = generateNickname(firstName: 'Diego', lastName: 'Juan');
  print(chapa);
}

String generateNickname({required firstName, required lastName}) {
  String nickname = firstName[0] + lastName[0];
  return nickname;
} */

/* void main() {
  var chapa = generateNickname(firstName: 'Diego', lastName: 'Juan');
  print(chapa);
}

String generateNickname({required firstName, required lastName}) =>
    firstName[0] + lastName[0]; */

//FIXME: Algorithm

/* void main() {
  var number = numberAdd(firstNumber: 'Lucas', secondNumber: '34');
  print(number);
}
String numberAdd({required firstNumber, required secondNumber}) =>
    firstNumber[0] + secondNumber[0];
 */
/* void main() {
  final chapa = generateNickname(firstName: 23 , lastName: 89);
  print(chapa);
}

int generateNickname({required firstName, required lastName}) {
  int nickname = firstName[0] + lastName[0];
  return nickname;
} */

//I want a code than select 2 number first and sum //TODO: EPALE

/* void main() {
  final result = sumFirstDigits(numOne: 24, numTwo: 34);
  print(result); // Output: 6
}

int sumFirstDigits({required int numOne, required int numTwo}) {
  final firstDigitNumOne = int.parse(numOne.toString()[0]);
  final firstDigitNumTwo = int.parse(numTwo.toString()[0]);
  return firstDigitNumOne + firstDigitNumTwo;
} */
//TODO: todo ``Final
/* void main() {
  final result = sumDigits(numOne: 34, numTwo: 34, numThree:25);
  print(result); // Output: 6
}

int sumDigits({required numOne, required numTwo, required numThree}) {
  int getFirst(int number) => int.parse(number.toString()[0]);
  
  return getFirst(numOne) + getFirst(numTwo) + getFirst(numThree);
} */

//FIXME: todo ``Final | Return
/* void main() {
  final result = sumNumber(numOne: 40, numTwo: 40);
  print(result);
}

int sumNumber({required numOne, required numTwo}) {
  // GetFirst convierte a cadena de texto || int.parse convierte a entero
  int getFirst(int number) => int.parse(number.toString()[0]);

  return getFirst(numOne) + getFirst(numTwo);
} */

/* void main() {
  final result = sumNumber(numOne: 40, numTwo: 20);
  print(result);
}

int sumNumber({required numOne, required numTwo}) =>
    getFirst(numOne) + getFirst(numTwo);

int getFirst(int number) => int.parse(number.toString()[0]); */

/* void main() {
  final result = sumNumber(numOne: 90, numTwo: 90);
  print(result);
}

int sumNumber({required numOne, required numTwo}) {
  int getFirstDigit(int number) {
    while (number >= 10) {
      number ~/= 10;
    }
    return number;
  }

  return getFirstDigit(numOne) * getFirstDigit(numTwo);
}
 */

//FIXME: Focus
/* void main() {
  final result = sumNumber(numOne: 40, numTwo: 20);
  print(result);
}

int sumNumber({required numOne, required numTwo}) =>
    getFirst(numOne) + getFirst(numTwo);

int getFirst(int number) => int.parse(number.toString()[0]); */

/* void main(){

  final result = sumNumber(numOne: 80, numTwo: 10);
  print(result);
}

int sumNumber({numOne, numTwo})=>
  getFirst(numOne) + getFirst(numTwo);

int getFirst(int number) => int.parse(number.toString()[0]); */

/* bool anaGrams(String word1, String word2) {
  if (word1.length != word2.length) {
    return false;
  }

  List<String> letters1 = word1.split('')..sort();
  List<String> letters2 = word2.split('')..sort();

  return letters1.join() == letters2.join();


}

void main() {
  String word1 = "amor";
  String word2 = "roma";

  bool result = anaGrams(word1, word2);
  print(result); 
}
 */
/* void main() {
  // Create an empty hash table
  Map<String, int> hashTable = {};

  // Add elements to the hash table
  hashTable['apple'] = 1;
  hashTable['orange'] = 5;
  hashTable['banana'] = 2;

  // Access a value using a key
  print(hashTable['apple']); // Output: 3

  // Check if a key exists in the hash table
  if (hashTable.containsKey('orange')) {
    print('The key "orange" exists in the hash table.');
  }

  // Remove an element from the hash table
  hashTable.remove('banana');

  // Iterate over all elements in the hash table
  for (var key in hashTable.keys) {
    var value = hashTable[key];
    print('$key: $value');
  }
}
 */

//TODO: Matrix

/* void setZeros(List<List<int>> matrix) {
  int rows = matrix.length;
  int cols = matrix[0].length;

  List<bool> shouldConvertRow = List.filled(rows, false);
  List<bool> shouldConvertCol = List.filled(cols, false);

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (matrix[i][j] == 0) {
        shouldConvertRow[i] = true;
        shouldConvertCol[j] = true;
      }
    }
  }

  for (int i = 0; i < rows; i++) {
    if (shouldConvertRow[i]) {
      for (int j = 0; j < cols; j++) {
        matrix[i][j] = 0;
      }
    }
  }

  for (int j = 0; j < cols; j++) {
    if (shouldConvertCol[j]) {
      for (int i = 0; i < rows; i++) {
        matrix[i][j] = 0;
      }
    }
  }
}

void main() {
  List<List<int>> matrix = [
    [1, 4, 2, 0, 2],
    [4, 1, 6, 2, 5],
    [2, 0, 9, 4, 2],
    [8, 1, 4, 9, 1]
  ];

  setZeros(matrix);

  for (var row in matrix) {
    print(row);
  }
}
 */

//FIXME: Practice and more practice matrix :) F : C

/* void main() {
  List<List<int>> matrix1 = [
    [1, 2],
    [3, 4],
  ];

  List<List<int>> matrix2 = [
    [5, 6],
    [7, 8],
  ];

  List<List<int>> resultMatrix = [
    [0, 0],
    [0, 0],
  ];

  resultMatrix[0][0] = matrix1[0][0] + matrix2[0][0];
  resultMatrix[0][1] = matrix1[0][1] + matrix2[0][1];
  resultMatrix[1][0] = matrix1[1][0] + matrix2[1][0];
  resultMatrix[1][1] = matrix1[1][1] + matrix2[1][1];

  for (var row in resultMatrix) {
    print(row);
  }
} */
//FIXME: Practice and more practice matrix :) F : C

/* void main (){

  final moreNumber = List.generate(10, (int index) => index);

  print(moreNumber);
}
 */

//TODO: Class pero NO de Fundamento de programacion

/* void main (){
  final pikachu =  Pokemon(type: 'Electric');

  print(pikachu);
  // print(pikachu.name);
  // print(pikachu.type);

}

class Pokemon{

  late String name;
  late String type;

  Pokemon({ String name = 'NO name',required String type}){
    this.name = name;
    this.type = type;
  }

  String toString(){
    return 'name: ${this.name} - type ${this.type}'; 
  }
}
 */

// TODO: class LAvaDeveloper
/* void main() {
  final pikachu = Pokemon(type: 'Electric', name: 'Pikachu');

  print(pikachu);
  // print(pikachu.name);
  // print(pikachu.type);
}

class Pokemon {
  late String name;
  late String type;

  Pokemon({required this.name, required this.type});

  String toString() => 'name: $name - type $type';
} */
// FIXME: return and  =>

// Basic Calculator using Arrow Functions with Integers
/* int calculator(int num1, int num2, String operator) => operator == '+'
    ? num1 + num2
    : operator == '-'
        ? num1 - num2
        : operator == '*'
            ? num1 * num2
            : operator == '/'
                ? num2 != 0
                    ? num1 ~/ num2 // Use ~/ for integer division
                    : throw ArgumentError("Cannot divide by zero.")
                : throw ArgumentError("Invalid operator: $operator");

void main() {
  int num1 = 5;
  int num2 = 3;
  String operator = '+';
  
  try {
    int result = calculator(num1, num2, operator);
    print('The result of the operation is: $result');
  } catch (e) {
    print('Error: $e');
  }
} */

// FIXME:  Arrow Function | Return

/* void main(){
  int result = Add(4,3);

  print(result);
  print(result + result);
}
int Add(int num1, int num2)=> num1 * num2; */

/* void main() {
  var add = (int num1, int num2) => num1 + num2;

  int result = add(10, 10);
  print(result); 

  int result2 = add(5, 5);
  print(result2);

  int result3 = add(2, 3);
  print(result3);
} */

// FIXME: practice Return

/* void main(){
  int result = Add(4,3);

  print(result);
  print(result + result);
}
int Add(int num1, int num2){

  print("print 1");

  return num1 * num2;
  
} */

//FIXME: Practice Arrow Function and return

/* void main() {
  int result = Add(4, 8);

  print(result);
  print(result * result);
}

int Add(int num1, int num2) {
  return num1 + num2;
}
 */
// TODO: Empoy and API  FIXME: API / SERVIDOR CONSUMIR TODO: Json
/* import 'dart:convert';
// import 'dart:html';

void main() {
  // final charmander = new Pokemon('Charmander', 'Fire');

  final rawJson = '{"name" : "Pikachu", "type" : "Electric"}';
  final parsedJson = json.decode(rawJson);

  final pikachu = new Pokemon.fromJson(parsedJson);

  print(pikachu.name);
  print(pikachu.type);

  // print(parsedJson['power']);
}

class Pokemon {
  late String name;
  late String type;

  Pokemon(this.name, this.type);

  Pokemon.fromJson(Map parsedJson) {
    name = parsedJson['name'];
    type = parsedJson['type'];
  }
}
 */
/* 
import 'dart:convert';

void main() {
  final rawJson = '{"name" : "Pikachu", "power" : "Electric"}';
  final parsedJson = json.decode(rawJson);
  final pikachu = new Pokemon.fromJson(parsedJson);

  print(pikachu.name);
  print(pikachu.type);
}

class Pokemon {
  late String name;
  late String type;

  Pokemon(this.name, this.type);

  Pokemon.fromJson(Map parsedJson) {
    name = parsedJson['name'];
    type = parsedJson['power'];
  }
}
 */

//TODO: Funciones = Functions

/* void main() async {
  final result = greet("Hello", "Lucas");
  print(result);
}

String greet(String text, String name) {
  if (text.isEmpty || name.isEmpty) {
    throw ArgumentError("Los argumentos no pueden estar vacíos.");
  }
  return '$text $name';
} */

/*   void main() {
    final result = greet(name: 23, text: "Hello");
    print(result);
  }

  // Funcion return Void = nada
  String greet({required String text,required int  name}){
    return '$text $name';
  }
 */

//TODO: Practice More Practice

/* class Node {
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class LinkedList {
  Node? head;

  void add(int data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(data);
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.add(30);
  list.add(1);
  list.add(2);
  list.add(30);
  list.add(30);
  list.add(30);
  list.printList(); // Output: 1 2 3
}

 */
//TODO: practice GPT
class Node {
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class LinkedList {
  Node? head;

  void add(int data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(data);
    }
  }

  void remove(int data) {
    if (head == null) return;

    if (head!.data == data) {
      head = head!.next;
      return;
    }

    Node current = head!;
    while (current.next != null) {
      if (current.next!.data == data) {
        current.next = current.next!.next;
        return;
      }
      current = current.next!;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.printList(); // Output: 1 2 3

  list.remove(2);
  list.printList(); // Output: 1 3
}

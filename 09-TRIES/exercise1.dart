import 'dart:io';

void main() {
  final List<String> books = ['Whatever', 'Book 1', 'water', 'Book 35'];

  stdout.write('What book are you looking for?: ');
  String userInput = stdin.readLineSync() ?? '';
  bool bookFound = books.any((book) =>
      book.toLowerCase().startsWith(userInput.toLowerCase().substring(0, 2)));

  if (bookFound == true) {
    print("Yea I have your book");
  } else if (bookFound == false) {
    print("Sorry my friend we don't have your book");
  }
}

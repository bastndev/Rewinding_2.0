import 'dart:io';

/* void main() {
  final List<String> books = ['Whatever', 'Book 1', 'water', 'Book 35'];

  stdout.write('What book are you looking for?: ');
  String userInput = stdin.readLineSync() ?? '';

  if (userInput.isNotEmpty) {
    String? foundBook = books.firstWhere(
        (book) => book.toLowerCase().startsWith(userInput.toLowerCase()),
        orElse: () => '');

    if (foundBook.isNotEmpty) {
      print("Yes!,We have:📚 $foundBook");
    } else {
      print("sorry my friend, we don't have your book");
    }
  }
} */

void main() {
  final List<String> books = ['Whatever', 'Book 1', 'water', 'Book 35'];

  stdout.write('What book are you looking for?: ');
  String userInput = stdin.readLineSync() ?? '';

  if (userInput.isNotEmpty) {
    String? bookFound = books.firstWhere(
        (book) => book.toLowerCase().startsWith(userInput.toLowerCase()),
        orElse: () => '');

    if (bookFound.isNotEmpty) {
      print("Yes!,We have:📚 $bookFound");
    } else {
      print("Sorry my friend we don't have your book");
    }
  }
}

import 'package:library_managment_system/books.dart';

class Library {
  List<Books> booksList = [];

  void addBook(Books book) {
    booksList.add(book);
  }

  void printBooklist() {
    print('List of all Books');
    for (var book in booksList) {
      print(
          'Title: ${book.title}\nAuthor: ${book.author}\nIsbn Number: ${book.isbn}\nAvailable: ${book.isAvailable}\n\n ');
    }
  }
}

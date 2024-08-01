import 'package:flutter/material.dart';
import 'package:library_managment_system/books.dart';
import 'package:library_managment_system/library.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Books book1 = Books(
      title: 'Game of Throns',
      author: 'Walter White',
      isbn: '090078601',
      isAvailable: true);

  Books book2 = Books(
      title: 'Breaking Bad',
      author: 'Jessy PinkMen',
      isbn: '090545601',
      isAvailable: true);

  Library library = Library();

  @override
  Widget build(BuildContext context) {
    library.addBook(book1);
    library.addBook(book2);

    library.printBooklist();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:library_managment_system/books.dart';
import 'package:library_managment_system/library.dart';
import 'package:library_managment_system/loan.dart';
import 'package:library_managment_system/secondScreen.dart';

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

  Books book3 = Books(
      title: 'Fast and Farouis',
      author: 'Torrento',
      isbn: '0ad0545601',
      isAvailable: false);

  Library library = Library();
  Loan loan = Loan();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    library.addBook(book1);
    library.addBook(book2);
    library.addBook(book3);

    library.printBooklist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Books'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWidget(),
                    ));
              },
              child: Text('next')),
        )
        // ListView.builder(
        //   itemCount: library.booksList.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text(library.booksList[index].title.toString()),
        //       subtitle: Text(library.booksList[index].author.toString()),
        //       trailing: ElevatedButton(
        //           onPressed: () {
        //             setState(() {
        //               if (library.booksList[index].isAvailable == false) {
        //                 library.booksList[index].isAvailable = true;
        //               } else {
        //                 library.booksList[index].isAvailable = false;
        //               }

        //               print(library.booksList[index].isAvailable.toString());
        //             });
        //           },
        //           style: ButtonStyle(
        //               backgroundColor:
        //                   library.booksList[index].isAvailable.toString() ==
        //                           'true'
        //                       ? const MaterialStatePropertyAll(Colors.green)
        //                       : const MaterialStatePropertyAll(Colors.red)),
        //           child:
        //               library.booksList[index].isAvailable.toString() == 'true'
        //                   ? const Text(
        //                       'Available',
        //                       style: TextStyle(color: Colors.white),
        //                     )
        //                   : const Text('Not Available',
        //                       style: TextStyle(color: Colors.white))),
        //     );
        //   },
        // )
        );
  }
}

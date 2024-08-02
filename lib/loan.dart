import 'package:library_managment_system/books.dart';
import 'package:library_managment_system/member.dart';

class Loan {
  Books? book;
  Members? member;
  DateTime? loanDate;
  DateTime? returnDate;

  Loan({this.book, this.loanDate, this.member, this.returnDate});

  void returnBook() {
    returnDate = DateTime.now();
    book?.isAvailable = false;
  }
}

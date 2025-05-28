import 'Book.dart';
import 'User.dart';
import 'Library.dart';

main() {
  var user = new User(id: "member1", name: "홍길동");
  var library = new Library(name: "도서관");
  var book1 = new Book(id: "b001", title: "책1", author: "저자1", publishYear:
  1990, isAvailable: true);
  var book2 = new Book(id: "b002", title: "책2", author: "저자2", publishYear:
  1995, isAvailable: false);
  var book3 = new Book(id: "b003", title: "책3", author: "저자3", publishYear:
  2000, isAvailable: true);

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  user.borrowedBook(book2);

  library.findBooksByAuthor("저자1");
  library.findYearMatchBook(1995);
  library.availableBorrowBooks();
}

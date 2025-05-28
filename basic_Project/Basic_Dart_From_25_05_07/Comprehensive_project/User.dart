import 'Book.dart';

class User {
  //    - 필드: id, name, borrowedBooks (Book 리스트)
//    - 메서드:
//      * borrowBook(): 도서 대출
//      * returnBook(): 도서 반납
//      * getBorrowedBooks(): 대출 중인 도서 목록 반환
final String id;
final String name;
 late List<Book> borrowedBooks;

User({required this.id,required this.name}){
  this.borrowedBooks = [];
}

void borrowedBook(Book book){
//   입력한 상태의 북이 대출 상태면, 대출 리스트에 추가한다.
if (book.isAvailable) {
  borrowedBooks.add(book);
  print("${name}님의 대출 목록에 추가되었습니다.");
}  else {
  print("${book.title}은 현재 대출 상태가 아닙니다.");
}
}

void returnBook(Book book){
  if (!book.isAvailable) {
    borrowedBooks.remove(book);
    print("{name}님의 대출 목록에서 제거 되었습니다.");
  }  else {
    print("${book.title}은 현재 대출 상태 입니다.");
  }
}

void getBorrowedBooks(){
  print("현재 대출 중인 책");
  for (var book in borrowedBooks) {
    //
  print(book.getInfo());
  }
  }
}
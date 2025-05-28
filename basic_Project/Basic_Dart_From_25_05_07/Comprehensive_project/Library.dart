
import 'Book.dart';
class Library {
  //    - 필드: name, books (Book 리스트)
//    - 메서드:
//      * addBook(): 도서 추가
//      * removeBook(): 도서 제거
//      * findBooksByAuthor(): 저자로 도서 검색
//      * findBooksByTitle(): 제목으로 도서 검색
//      * borrowBook(): 도서 대출 처리
//      * returnBook(): 도서 반납 처리
  final String name;
  late List<Book> books;

  Library({required this.name}) {
    this.books = [];
  }

  void addBook(Book book) {
//   북의 정보를 입력받아 리스트에 추가한다.
    if (book != null) {
      books.add(book);
      print("${book.title} 추가 완료!");
    } else {
      print("도서 정보 없음!");
    }
  }

  void removeBook(Book book) {
//   북을 입력 받아 아이디를 현재 리스트의 도서의 아이디와 매치 시켜 일치한다면 삭제한다.
    if (book == null) {
      print("도서 정보 없음!");
    }
    var targetId = book.id;
    // for (var findBook in books) {
    //   //
    //   if (findBook.id == targetId) {
    //     books.remove(findBook);
    //     print("${targetId}의 도서 삭제 완료!");
    //   }
    // }
    books.removeWhere((book)=>book.id == targetId);
        print("${targetId}의 도서 삭제 완료!");
  }

  // *애드는 리무브와 달리 조건을 본후 추가하려면 별도의 조건문을 사용해야 한다.
  void findBooksByAuthor(String findAuthor) {
// 도서 정보를 입력 받아서 가지고 있는 도서의 저자와 비교해서 일치하면 출력한다.
    int count = 0;
    // 이게 가장 기본. 가독성 좋고.
    List<Book> foundBooks = [];
    for (var book in books) {
      var author = book.author;
      if (author == findAuthor) {
        print("입력 하신 ${findAuthor}의 책 정보: ${book.getInfo()}");
        // count++;
      foundBooks.add(book);
      }


      // if (count == 0) {
      //   print("입력 하신 저자의 책이 없습니다.");
      // }
      if (foundBooks.isEmpty) {
          print("입력 하신 저자의 책이 없습니다.");
      }
    }
  }

  void findBooksByTitle(String findTitle) {
// 역시 저자 찾는 로직과 비슷하나 비교 값만 바뀐다.
    int count = 0;
    List<Book> foundBooks = [];

    // 이게 가장 기본. 가독성 좋고.
    for (var book in books) {
      var title = book.title;
      if (title == findTitle) {
        print("입력 하신 제목 ${findTitle}의 책 정보: ${book.getInfo()}");
        // count++;
        foundBooks.add(book);
      }

      // if (count == 0) {
      //   print("입력 하신 책이 없습니다.");
      // }

      if (foundBooks.isEmpty) {
        print("입력 하신 저자의 책이 없습니다.");
      }
    }
  }

  void borrowBookMethod(Book book) {
// 북의 상태를 대출 불가로 바꾼다.
    if (book != null) {
      var id = book.id;
      for (var target in books) {
        if (target.id == id) {
          target.borrowBook();
          print("${target.title}이 대출되었습니다.");
        }
      }
    }
  }

  void returnBookMethod(Book book) {
    if (book != null) {
      var id = book.id;
      for (var target in books) {
        if (target.id == id) {
          target.returnBook();
          print("${target.title}이 반납되었습니다.");
        }
      }
    }
  }

  void findYearMatchBook(int year){
    var list = books.where((b)=>b.publishYear == year).toList();
    if (list.isNotEmpty) {
      print("입력한 정보와 일치하는 도서 목록");
      for (var o in list) {
        print(o.getInfo());
      }
    }
  }

  void availableBorrowBooks(){
    var borrowAvailableBook = books.where((book)=>book.isAvailable == true).toList();
    print("대출 가능 도서");
    for (var o in borrowAvailableBook) {
      print(o.getInfo());
    }
  }
}
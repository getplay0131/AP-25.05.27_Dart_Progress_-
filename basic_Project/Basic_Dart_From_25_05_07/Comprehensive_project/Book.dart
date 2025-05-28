// 작성일 : 25.05.28
//    - 필드: id, title, author, publishYear, isAvailable
//    - 메서드: getInfo(), borrow(), return()
class Book{
  final String id;
  final String title;
  final String author;
  final int publishYear;
  bool isAvailable;

  Book({required this.id,required this.title,required this.author,required
  this.publishYear,required this
      .isAvailable});



  String printBookIsAvailableStat(){
    if (isAvailable){
      return "대출 가능!";
    } else {
      return "대출 불가!";
    }
  }

  String getInfo(){
  //   책의 정보 출력
   return("책 id : ${id}, 제목 : ${title}, 저자 : ${author}, 출판연도 : "
        "${publishYear}, 대출 가능 상태 ${printBookIsAvailableStat()}");
  }

  void borrowBook(){
  //   책의 대출 가능 상태를 불가로 바꾼다.
    isAvailable = false;
    print("책이 대출 되었습니다. 대출이 불가합니다.");
  }

  void returnBook(){
  //   책의 대출 가능 상태를 가능으로 바꾼다.
    isAvailable = true;
    print("책이 반납 되었습니다. 대출이 가능합니다.");
  }
}





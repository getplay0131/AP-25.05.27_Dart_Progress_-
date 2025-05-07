// 1. Person 클래스를 만드세요:
// - 필드:
//   * final String name
//   * final int age
//   * String? address (nullable)
// - 생성자: 필수 파라미터로 name과 age를 받고, 선택적으로 address를 받음
// - 메서드:
//   * getInfo(): "[name], [age]세, 주소: [address]" 형태의 문자열 반환
//   * 주소가 null이면 '주소 정보 없음'으로 표시
  class Person{
  final String name;
  final int age;
  String? address;

  Person({required this.name,required this.age, this.address});

  String getInfo(){
    String temp;
    temp = address!;
    if (address == null) {
      temp = "주소 정보 없음";
    }
    return "$name $age 세, 주소 : $temp ";
  }
}
// 2. Person 클래스를 상속받는 Student 클래스를 만드세요:
// - 추가 필드:
//   * final String schoolName
//   * final int grade
// - 생성자: Person의 필드와 Student의 추가 필드 초기화
// - 메서드:
//   * getInfo() 오버라이드: 기존 정보에 "학교: [schoolName], [grade]학년" 추가

// 3. Person과 Student 인스턴스를 각각 생성하고 정보를 출력하세요

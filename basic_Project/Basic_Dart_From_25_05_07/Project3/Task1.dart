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
 String result = address ?? "주소 정보 없음";
    return "$name $age 세, 주소 : $result ";
  }
}
// 2. Person 클래스를 상속받는 Student 클래스를 만드세요:
// - 추가 필드:
//   * final String schoolName
//   * final int grade
// - 생성자: Person의 필드와 Student의 추가 필드 초기화
// - 메서드:
//   * getInfo() 오버라이드: 기존 정보에 "학교: [schoolName], [grade]학년" 추가
class Student extends Person{
  final String name;

  final int age;

  final String? address;

  final String schoolName;

  final int grade;

  Student(this.name, this.age, this.address, this.schoolName, this.grade) :
  super(name: name, age: age, address: address);

  @override
  String getInfo() {
    //
    return super.getInfo() + "소속 학교 : $schoolName, $grade 학년";
  }
}
// 3. Person과 Student 인스턴스를 각각 생성하고 정보를 출력하세요
main() {
  final person = new Person(name: "홍길동", age: 30, address: "서울시 강남구");
  final student = new Student("철수", 20, "서울시 송파구", "초등학교", 1);

  print(person.getInfo());
print(student.getInfo());
}



void main() {
  var name2 = '승현';
  //runtimeType : 변수의 타입을 알려줌 => 헌데 이 기능은 객체명만 나타내기에, 디버깅으로 확인시에는 투스트링을 사용해야 한다.
  print(name2 + '의 타입 : ' + (name2.runtimeType.toString()) + '입니다.');
}

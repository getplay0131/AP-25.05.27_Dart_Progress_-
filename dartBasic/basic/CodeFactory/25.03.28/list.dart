void main() {
  //list 리스트 => 자바의 어레이 리스트와 유사한거 같다.
  // 중괄호가 아닌 자바에서의 배열 쓰듯이 대괄호로 사용해야 한다.
  List<String> names = ['제니', '지수', '로제', '리사'];
  print(names);
  print(names[0]);
  names.add('한나');
  print(names);
  print("블랙 핑크는 이제 " + names.length.toString() + "명이다.");
  names.remove('한나');
  print(names);
  print(names.indexOf('제니'));
}

void main(){
  // final 상수로 사용 : 값 변경 불가
  // final과 const는 var 생략 가능

  // DateTime : 시간
  DateTime now = DateTime.now();
  print(now);

  // final은 빌드 타임을 몰라도 무방하지만, const는 빌드 타임을 알아야한다.
  // 해당 코드를 실행할때 빌드를 하는데(101010 으로 변환하는 과정), 그 시간이 빌드 타임이고, 코드 작성시에 해당 값을 알고 있어야 하는데, DateTime.now()는 실행시에 즉 런타임이 되어야 값을 알기 때문에 에러가 발생한다.
  final DateTime now2 = DateTime.now();
   
}
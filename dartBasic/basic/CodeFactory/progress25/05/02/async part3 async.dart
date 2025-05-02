main() async {
Future<String> name = Future.value("hello");
Future<int> num = Future.value(1);

// 2개의 파라미터
//   딜레이 - 지연하다
//   1번 파라미터 - 지연할 기간 - duration
//   2번 파라미터 - 실행할 함수
// Future.delayed(Duration(seconds: 2), (){
//   print("딜레이 끝");
// });
addNumbersFuture(1, 1);
await addNumbersAwait(2, 2);
// addNumbers(2, 2);

print("---대기중---");
}

void addNumbersFuture (int num1, int num2) {
  print("future 기능");
  print("계산중 : $num1 + $num2");
  print("cpu : 다음 코드 보니 2초 있다가 와서 다음 코드 실행하면되네!");
  Future.delayed(Duration(seconds: 2),(){
    print("계산 완료 :$num1 + $num2 =  ${num1+num2}");
    print("cpu : 약속시간 지키고, 이 함수 실행 완료!");
  });
  print("cpu : 2초 기다리는 동안 이 코드 먼저 처리하자!");
print("함수 종료 :  $num1 + $num2");
}

Future<void> addNumbersAwait(int num1, int num2) async{
  print("await 기능");
  print("계산중 : $num1 + $num2");
  print("cpu : await 기간동안 기다려야 해!");
  await Future.delayed(Duration(seconds: 2),(){
    print("cpu : 다음 코드를 하고 싶어도 await코드가 예약이 되어 잇어서 그거 하고 다음코드 해야해!");
    print("계산 완료 :$num1 + $num2 =  ${num1+num2}");
  });
  print("함수 종료 :  $num1 + $num2");
  print("cpu : 약속시간 지키고, 이 함수 실행 완료!");
}
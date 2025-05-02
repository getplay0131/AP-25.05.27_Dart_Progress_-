main() {
Future<String> name = Future.value("hello");
Future<int> num = Future.value(1);

// 2개의 파라미터
//   딜레이 - 지연하다
//   1번 파라미터 - 지연할 기간 - duration
//   2번 파라미터 - 실행할 함수
// Future.delayed(Duration(seconds: 2), (){
//   print("딜레이 끝");
// });
addNumbers(1, 1);
addNumbers(2, 2);

print("---대기중---");
}

void addNumbers(int num1, int num2){
  print("계산중 : $num1 + $num2");
  Future.delayed(Duration(seconds: 2),(){
    print("계산 완료 :$num1 + $num2 =  ${num1+num2}");
  });
print("함수 종료 :  $num1 + $num2");
}
void main() {
  print("1. 시작");

  handleExceptionWithThen();

  print("2. handleExceptionWithThen 호출 후");

  // 추가 코드
  print("3. 다른 작업 수행");
}

void handleExceptionWithThen() {
  print("4. handleExceptionWithThen 내부");

  createExceptionMethod()
      .then((_) => print("7. 이 코드는 실행되지 않습니다")) // 예외 발생으로 실행 안됨
      .catchError((e) => print("8. 예외 처리: $e"));

  print("5. Future 등록 후");
}

Future<void> createExceptionMethod() async {
  print("6. createExceptionMethod 시작");

  return Future.delayed(
      Duration(seconds: 2),
          () => throw Exception("예외 발생!")
  );
}

//실행 순서는 다음과 같습니다:
//
// "1. 시작"
// "4. handleExceptionWithThen 내부"
// "6. createExceptionMethod 시작" (async 함수의 동기 부분)
// "5. Future 등록 후" (handleExceptionWithThen 함수가 계속 실행)
// "2. handleExceptionWithThen 호출 후"
// "3. 다른 작업 수행"
// (2초 후) "8. 예외 처리: Exception: 예외 발생!"
//
// 이렇게 then/catchError 방식은 비동기 작업을 "배경"에서 실행하고, 메인 코드 흐름은 계속 진행됩니다. 이것이 "비차단" 또는 "논블로킹(non-blocking)" 실행이라고 불리는 패턴입니다.
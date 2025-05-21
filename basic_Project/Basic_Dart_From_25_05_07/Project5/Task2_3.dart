// 2-3: 기본 Stream 변환
Stream<int> countStream(int maxCount) async* { // Stream을 반환하기에 async*을 사용해야 한다.
// (힌트: for 루프, Future.delayed, await, yield 사용)
  for(int i = 1; i <= maxCount; i++){
    await Future.delayed(Duration(seconds: 1)); //1초 지연하는 코드. await로 대기후 다음 코드로
    // 넘어감
    yield i ; // return은 함수를 종료하지만, yield는 해당 값을 스트림에 전달한다. 즉 스트림이라는 공간에 값을
    // 저장하는 거다
  }
}

// 1. countStream(10)에서 짝수만 필터링하는 코드를 작성하세요
void filterEvenNumbers() async {
final stream = countStream(10);

// 방법 1: await for 사용
// 여기에 코드를 작성하세요

// 또는

// 방법 2: where 메서드 사용
// 여기에 코드를 작성하세요
}

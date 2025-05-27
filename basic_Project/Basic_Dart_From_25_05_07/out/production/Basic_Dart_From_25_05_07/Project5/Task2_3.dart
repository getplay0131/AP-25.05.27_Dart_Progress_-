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
// await for (final target in stream) {
//   //
//   if (target % 2 == 0) {
//     print(target);
//   }
//   }

  // 또는

// 방법 2: where 메서드 사용
// 여기에 코드를 작성하세요
// var list = await stream.where((r)=>r%2==0).toList();
// print(await list);

// * where + for-each
// var list = await stream.where((r)=>r%2==0).toList();
//   for (var o in list) {
//     print(o);
//   }

  // *await for + where
  // await for (var o in stream.where((r)=>r%2==0)) {
  //   print("짝수 : $o");
  // }

  // *listen 활용
  stream.where((r)=>r%2==0).listen((num)=>print("짝수 : $num"));
}

main() {
  filterEvenNumbers();
}
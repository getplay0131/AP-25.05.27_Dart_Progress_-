import 'dart:async';

// 1. 아래 함수를 완성하여 0부터 4까지의 숫자를 포함하는 Stream을 만드세요
Stream<int> createSimpleStream() async* {
  // 여기에 코드를 작성하세요 (힌트: for 루프와 yield 사용)
  for(int i = 0; i < 5 ; i++) {
    yield i;
  }
}

// 2. 위 Stream을 구독하고 각 숫자를 출력하세요
void testSimpleStream() async {
  // 여기에 코드를 작성하세요 (힌트: await for 또는 listen 사용)
//   listen 방법
var stream1 = createSimpleStream(); // 해당 함수가 이미 스트림을 반환하므로 새로 스트림을 생성할 필요는 없다.

// listen은 백그라운드에서 스트림을 처리하며 즉시 다음 코드로 넘어간다.
// stream1.listen((number){
//   print("받은 숫자 : $number");
// },
// onDone: ()=>print("스트림 처리 완료!"), // 다 처리됬을때 동작할 코드
// onError: (error)=>print("오류 발생: $error")); // 에러 발생시 동작할 코드
//
// print("listen은 비동기으므로 이 코드가 먼저 실행된다! 스트림은 백그라운드에서 치리되고 있다.");

  // 스트림이 완료될때 까지 함수 실행을 블로킹한다.
await  for (final number in stream1) {
    print("[await for] 받은 숫자 : $number");
  }
  print("스트림 처리 완료");
}



// main 함수 - 실행해보세요
void main() async {
 // await  testSimpleStream(); // await를 사용하면 오류가 발생하는데, 그건 왜 그런걸까.. 반환값 관련 오류가 나는거
 // 같은데.
  testSimpleStream();
}
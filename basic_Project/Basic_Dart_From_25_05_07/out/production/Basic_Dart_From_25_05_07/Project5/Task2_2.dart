// 2-2: 지연이 있는 Stream 만들기
// 1. 1초 간격으로 1부터 5까지 숫자를 생성하는 Stream을 만드세요
import 'dart:async';

Stream<int> countStream(int maxCount) async* { // Stream을 반환하기에 async*을 사용해야 한다.
// (힌트: for 루프, Future.delayed, await, yield 사용)
for(int i = 1; i <= maxCount; i++){
  await Future.delayed(Duration(seconds: 1)); //1초 지연하는 코드. await로 대기후 다음 코드로
  // 넘어감
  yield i ; // return은 함수를 종료하지만, yield는 해당 값을 스트림에 전달한다. 즉 스트림이라는 공간에 값을
  // 저장하는 거다
}
}

Stream<int> countStreamWithError(int maxCount) async* { // Stream을 반환하기에
  // async*을 사용해야
  // 한다.
  // * vs StreamController에 비해 더 유리한 부분
  // * 순차적 데이터 생성,파일이나 대용량 데이터를 한줄씩 처리할때
  for(int i = 1; i <= maxCount; i++){
    await Future.delayed(Duration(seconds: 1)); //1초 지연하는 코드. await로 대기후 다음 코드로
    // 넘어감
    try{
      if (i == 3) {
        throw Exception("에러 발생!"); // 에러 발생
      }
      yield i ; // return은 함수를 종료하지만, yield는 해당 값을 스트림에 전달한다. 즉 스트림이라는 공간에 값을
      // 저장하는 거다
    } catch(e){ // 오류 캐치
      yield* Stream.error(e); // 별도의 오류 이벤트 스트림에 에러를 전달한다.
      continue; // 계속해서 작업을 이어 나간다.
    }
  // * 만약 오류를 관리하고 싶다면, 별도 클래스를 만들어 해당 클래스에서 관리해야 한다.
  }
}

// 함수에서 어떤 값도 yield를 사용하지 않으므로 어떤 스트림을 반환하는지 명확하지 않다. 그러므로 async*은 미사용한다.
Stream<int> countStreamWithErrorUseController(int maxCount)  {
  // * vs yield* Stream.error()에 비해 더 유리한 부분
  // *여러 소스에서 이벤트 발생시, 한 스트림에 여러 곳에서 데이터 추가시
  var streamController = new StreamController<int>(); // 컨트롤러 생성

  // 함수 내부에선 컨트롤러를 사용한다.
  Future(() async{
    try {
      for(int i = 1; i <= maxCount; i++){
        await Future.delayed(Duration(seconds: 1));
        try{
          if (i == 3) {
            throw Exception("에러 발생!");
          }
          streamController.add(i); // 정상적인 흐름에서 컨트롤러에 값 추가
        } catch(e){ // 오류 캐치
          streamController.addError(e); // 컨트롤러에 에러 추가
          print("값 $i에서 에러! $e"); // 디버깅 메시지
        }
    }
      // * 만약 오류를 관리하고 싶다면, 별도 클래스를 만들어 해당 클래스에서 관리해야 한다.
    }finally {
      streamController.close(); // 수동으로 컨트롤러 필수로 닫아줘야 함. 닫아주지 않을시 메모리 누수 발생
    }
  });
  return streamController.stream; // 함수는 스트림을 반환한다.
}


// 2. 위 Stream을 구독하고 "카운트: X"와 같은 형식으로 출력하세요
void printCountStream() async {
print("카운트 시작...");
// 여기에 코드를 작성하세요
  try{
    await for (final nums in countStream(10)) { // 호출하는 함수가 await를 사용해 값을
      // 도출하므로, 받는 입장에서도 기다려서 해당 값을 받는다.
      print("카운트 : $nums"); // 해당 매개변수로 스트림에서 값을 하나씩 꺼내온다.
  }
  } catch (e){
    print("에러가 발생하여 처리됨. 발생한 에러 : $e");
  }
  print("카운트 완료!");
}

void printCountStreamWithStreamController() async {
  print("카운트 시작...");
// 여기에 코드를 작성하세요
  try{
    await for (final nums in countStreamWithErrorUseController(5)) {
      print("카운트 : $nums");
    }
  } catch (e){
    print("에러가 발생하여 처리됨. 발생한 에러 : $e");
  }
  print("카운트 완료!");
}

void handleErrorWithStreamMethods()async{
//   오류 처리후 대체 값 제공
var handleError = countStreamWithError(5).handleError((error){
  print("오류 발생 (처리 됨) : $error");
},
test: (error) => error is Exception); // 에러의 종류를 판단

await for (final nums in handleError) {
  //비동기 값에서 꺼내기 위해 await for 사용
print("카운트 : $nums");
}
print("모든 처리 완료!");
}

void main() async {
  // printCountStream();
  // handleErrorWithStreamMethods();
  printCountStreamWithStreamController();
}


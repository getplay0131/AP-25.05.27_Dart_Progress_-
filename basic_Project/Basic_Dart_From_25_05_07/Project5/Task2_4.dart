// 2-4: 간단한 StreamController 사용
import 'dart:async';
main() {
useStreamController();

}

void useStreamController() {
// 여기에 코드를 작성하세요
// 1. StreamController를 생성하고 다음 단계를 수행하세요:
// - 컨트롤러 생성
  var streamController = new StreamController<int>();
// - 리스너 추가
  streamController.stream.listen((data)=>print("data : $data"));
// - 5개의 숫자 추가 (1~5)
  for(int i = 1; i<=5; i++){
    streamController.add(i);
  }
// - 컨트롤러 닫기
  streamController.close();
}

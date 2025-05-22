// 3-2: 간단한 타이머 기반 이벤트
import 'dart:async';

// 1. 타이머를 사용하여 5초 동안 1초마다 메시지를 출력하는 함수를 작성하세요
// (힌트: Timer.periodic 사용)
void simpleTimerEvents() {
int count = 0;
// 여기에 코드를 작성하세요
// * Timer.periodic : 일정한 간격마다 콜백 함수를 반복적으로 실행해주는 비동기 타이머
// *콜백 함수 안에서 몇번 호출되었는지 카운트 가능
// *5초동안 하려면 5번 호출 되면 멈취야 한다.
// *첫번째 인자는 반복 주기, 두번째 인자는 콜백함수
// *두번째 인자로 타이머 객체가 전달되고, 이를 통해 타이머 정지 가능.

  Timer.periodic(Duration(seconds: 1), (t){
    count++;
    print("$count초 경과!");
    if (count == 5) {
      t.cancel();
    }
  });
}

main() {
  simpleTimerEvents();
}

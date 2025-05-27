// 3-3: 비동기 작업 오류 처리
// 1. 랜덤하게 성공 또는 실패하는 Future 함수를 만들고 오류를 처리하세요
import "dart:math";
Future<String> fetchDataWithPossibleError() async {
// 50% 확률로 성공 또는 실패하는 코드
// 여기에 코드를 작성하세요
final randomResult = Random.secure().nextBool();
return randomResult ? "success" : "failed";
}

// 오류 처리 예제
void handleAsyncError() async {
  try {
// 여기에 코드를 작성하세요
    final result = await fetchDataWithPossibleError();
    if (result == "success") {
      print("성공!");
    } else {
      throw Exception("실패!");
    }
  } catch (e) {
// 여기에 코드를 작성하세요
    print("실패 했으니 다시 시도해 보세요!");
  } finally {
    print("작업이 완료되었습니다.");
  }
}

main() {
  handleAsyncError();
}

// 4-1: 간단한 다운로드 진행 상황 시뮬레이션
// 1. 파일 다운로드 진행 상황을 시뮬레이션하는 코드를 작성하세요:
// - downloadFile(String fileName) 함수 구현
// - 0%부터 100%까지 20% 단위로 진행 상황 보고
// - 각 단계는 0.5초 소요
// - 완료 시 "다운로드 완료" 메시지 출력

Future<void> downloadFile(String fileName) async {
// 여기에 코드를 작성하세요
List<int> processPercent = [0,20,40,60,80,100];
List<String> processPercentToDescription = ["다운로드 시작", "진행 중 : 1/5","진행 중 : "
    "2/5", "진행중 : 3/5", "진행중 : 4/5", " 다운로드 완료"];
// *두개의 리스트를 받아 맵을 만든다
final downloadingMap = Map.fromIterables(processPercent,
    processPercentToDescription);
for (final process in processPercent) {
  print("${process}% : ${downloadingMap[process]}");
  // *마지막에서는 대기할 필요 없다.
  if(process != 100){
    await Future.delayed(Duration(milliseconds: 500));
  }
}
print("$fileName 다운로드 작업 완료!");
// for(int i = 0;i < processPercent.length;i++){
//   await Future.delayed(Duration(microseconds: 500));
//   print("${i*20} % : ${downloadingMap[i*20]}");
// }
}

// 다운로드 실행 및 진행 상황 출력
void simulateFileDownload() async {
print("파일 다운로드를 시작합니다...");
// 여기에 코드를 작성하세요
//   *대기해야 해당 함수의 값을 받아올 수 있다.
await downloadFile("문서");
}

main() {
  simulateFileDownload();
}
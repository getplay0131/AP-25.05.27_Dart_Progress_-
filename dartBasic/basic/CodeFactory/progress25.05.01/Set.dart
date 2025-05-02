// 리스트와 매핑 방법이 유사하다.
main() {
  Set runningMan = {
    "유재석",
    "김종국",
    "지석진",
    "이광수",
    "전소민",
    "송지효",
    "양세찬",
    "하하",
  };

  final newRunningMan = runningMan.map((r) => "멤버 : $r").toSet();
  print(newRunningMan);
}
main() {
  List<String> runningMan =["유재석", "김종국", "지석진", "이광수", "전소민", "송지효", "양세찬", "하하" , "하하"];

  final tempRunningMan =  runningMan.map((r)=> "멤버 : $r");
print(runningMan);
print(tempRunningMan.toSet());

print(runningMan == runningMan);
print(runningMan == tempRunningMan);

String nums = "123455";
final parsed = nums.split(""); // list로 반환
final parsed2 = nums.split("").map((x)=> "$x.jpg").toSet().toList(); // list로 반환
print(parsed);
print(parsed2);

}
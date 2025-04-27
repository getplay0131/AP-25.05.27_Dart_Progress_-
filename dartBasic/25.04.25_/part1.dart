main() {
 List<String> runningMan =["유재석", "김종국", "지석진", "이광수", "전소민", "송지효", "양세찬", "하하" , "하하"];

 print(runningMan);
 print(runningMan.asMap());
 print(runningMan.toSet());

 Map runningManMap = runningMan.asMap();
 print(runningManMap.keys);
}
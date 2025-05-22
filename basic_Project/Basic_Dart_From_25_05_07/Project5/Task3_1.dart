// 3-1: Future 체이닝
// 1. 다음 두 함수를 연결하여 사용하세요:
// - fetchUsername(): 1초 후 사용자 이름("홍길동")을 반환
// - fetchUserAge(String name): 1초 후 해당 이름의 나이를 반환 (예: "홍길동"->20)
// - 최종 출력: "홍길동님의 나이는 20세입니다."

Future<String> fetchUsername() async {
// 여기에 코드를 작성하세요
return Future.delayed(Duration(seconds: 1),()=>"김철수");
}

Future<int> fetchUserAge(String name) async {
// 여기에 코드를 작성하세요
  Future.delayed(Duration(seconds: 1));

//   단순히 정수만 반환할수도 있지만, 맵을 이용해 자료구조를 만들어 이용도 가능하다.
Map<String,int> userInfos = {"홍길동" : 20, "김철수" : 30};
return userInfos[name] ?? 0;
}

// 두 가지 방법으로 구현해보세요:
// 방법 1: then() 사용
void chainWithThen() {
// 여기에 코드를 작성하세요
// then : 뒤에서 돌린다.
// then은 퓨처의 완료를 감지하고 후속 작업을 연결하는데 사용된다.
// 결과를 뒤에서 돌리고 다 되면 출력만 해준다.
// fetchUsername().then((name){
//   fetchUserAge(name).then((age){
//     print("${name}님의 나이는 ${age}세 입니다.");
//   });
// });
fetchUsername().then((name){
  fetchUserAge(name).then((age)=>print("${name}님의 나이는 ... ${age}세 입니다!"));
});
}

// 방법 2: async/await 사용
void chainWithAsync() async {
// 여기에 코드를 작성하세요
// final name = await fetchUsername();
// final age = await fetchUserAge(name);
// print("$name 님의 나이는 $age 세 이네요!");

print("${await fetchUsername()}님의 나이는.. 두구두구... ${await fetchUserAge(await
fetchUsername())}세 이네요!");
}

main() {
  chainWithThen();
  chainWithAsync();
}
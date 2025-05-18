//과제 1: Future와 async/await
main() {

// 1. 다음 함수를 구현하세요:
// - fetchUserData(): 2초 후에 사용자 데이터(Map)를 반환하는 Future
Future<Map<String,int>> fetchUserData() async{
return await Future.delayed(Duration(seconds: 2),() =>
  {"id" : 1,"age" : 20, "score" : 85});
}

// - fetchUserPosts(): 1초 후에 사용자의 게시물 목록(List)을 반환하는 Future
Future<List<String>> fetchUserPosts() async{
  return Future.delayed(Duration(seconds: 1),()=>["게시물1","게시물2"]);
}
// 2. 위 두 함수를 순차적으로 호출하고 결과를 출력하는 async 함수 getUserInfo()를 작성하세요
Future<void> getUserInfo( ) async{
  print("사용자 데이터 요청 시작...");

  final userData = await fetchUserData();
  print("사용자 데이터 : $userData");

final userPosts = await fetchUserPosts();
print("사용자 게시글 : $userPosts");

print("사용자 데이터 수신 완료");
}
// getUserInfo();
// 3. 위 두 함수를 병렬로 호출하고 모든 결과가 준비되면 출력하는 async 함수 getUserInfoParallel()을 작성하세요
// (힌트: Future.wait 활용)
Future<void> getUserInfoParallel() async{
  //Future.wait는 여러개의 비동기를 동시에 병렬로 실행하고, 모든 비동기가 완료될대까지 대기 후 결과를 리스트로 반환한다.
  var results = await Future.wait([fetchUserData(),fetchUserPosts()]);

  var userData = results[0] as Map<String, int>;
  var userPost = results[1] as List<String>;

  print("사용자 정보 : $userData");
  print("사용자 게시물 : $userPost");

}

Future<(Map<String,int>,List<String>)> getUserInfoParallelUseRecords() async{
  final userDatas = await fetchUserData();
  final userPosts = await fetchUserPosts();
  print("사용자 데이터 : $userDatas");
  print("사용자 게시물 : $userPosts");
  return (await userDatas, await userPosts);
}
// getUserInfoParallel();
final(userData as Map<String,int>, userPost as List<String>) = await
getUserInfoParallelUseRecords();
// 4. try-catch를 사용하여 비동기 함수의 예외를 처리하는 예제를 작성하세요
// (힌트: 일부러 예외를 발생시키는 함수를 만들고 호출)
}

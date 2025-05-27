//* 비동기 함수를 사용하기 위해 메인 메서드도 async 필요
//과제 1: Future와 async/await
main() async {

// 1. 다음 함수를 구현하세요:
// - fetchUserData(): 2초 후에 사용자 데이터(Map)를 반환하는 Future
Future<Map<String,int>> fetchUserData() async{
  print("test");
return Future.delayed(Duration(seconds: 2),() =>
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
  //*Future.wait는 여러개의 비동기를 동시에 병렬로 실행하고, 모든 비동기가 완료될대까지 대기 후 결과를 리스트로 반환한다.
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
//   var (datas, posts) = await getUserInfoParallelUseRecords();
//   print("Record Tset User Datas : $datas");
//   print("Record Tset User Posts : $posts");

  // *Future 반환 누락: createExceptionMethod()가 Future를 반환하지 않고 있어, 발생한 예외가 전파되지
  // *않습니다.
  Future<void> createExceptionMethod() async{
  return Future.delayed(Duration(seconds: 2),()=> throw Exception("예외 발생!"));
  }
  // *await
  // *해당 비동기 작업이 완료될 때까지 함수 실행을 일시 중단(block)
  // *코드 가독성이 좋음
  //* 실행 흐름이 더 직관적임
  //* 비동기 작업의 결과가 이후 코드에 필요할 때
  //* try-catch를 통한 예외 처리가 더 자연스러움

  //*주문 후 카운터 앞에 서서 음식이 나올 때까지 기다리는 것과 같습니다.
  //* 음식이 준비될 때까지 다른 일을 할 수 없습니다.
  //* 하지만 대신 음식을 바로 받아 다음 단계(다음 코드 라인)를 즉시 진행할 수 있습니다.
  //*
  // async/await 방식 (문법적 설탕)
  // void example2() async {
  //   try {
  //     var data = await fetchData();
  //     var result = await processData(data);
  //     await saveResult(result);
  //   } catch (e) {
  //     handleError(e);
  //   }
  // }
  Future<void> handleException() async{
  try{
    await createExceptionMethod();
    print("예외 발생시 이 문장은 출력되지 않음!");
  } catch(e){
    print("예외 처리 진행중... : $e");
  }
  }

  void handleExceptionWithThen(){
  createExceptionMethod().then((_)=> print("이코드는 실행되지 않는다.")).catchError((e)=>print("예외 처리 (then 방식) : $e"));
  }
//   * then/catchError은 await와 달리 대기하지않고 배경에 해당 작업을 보내서 뒤에서 실행하고, 바로 다음 코드를
//   *실행하다가, 배경에서 실행하는 코드가 완료(Future가 완료) 되면 해당 결과를 노출한다. => await 미사용과 동일
//   *인자로 비동기 작업이 완료시 실행할 콜백 함수를 등록한다.
//   *비동기를 배경에서 실행하고, 메인 코드 흐름은 지속해서 진행하는걸 비차단 또는 논블로킹 실행이라고 부른다.

//   *식당에 주문하고 진동벨을 받는 것과 같습니다.
//   *주문한 후 벨이 울릴 때까지 다른 일(쇼핑, 전화 등)을 할 수 있습니다.
// *벨이 울리면(비동기 작업 완료) 음식을 받으러 갑니다(then 콜백 실행).

// *다른 작업을 블로킹하지 않고 계속 실행해야 할 때
// *콜백 체인이 필요할 때
// *함수를 async로 만들고 싶지 않을 때
// *여러 독립적인 비동기 작업을 시작하고 싶을 때
// then 방식 (기본 비동기 흐름)
// void example1() {
//   fetchData()
//     .then((data) => processData(data))
//     .then((result) => saveResult(result))
//     .catchError((e) => handleError(e));
// }

// 4. try-catch를 사용하여 비동기 함수의 예외를 처리하는 예제를 작성하세요
// (힌트: 일부러 예외를 발생시키는 함수를 만들고 호출)
// try {
//     await createExceptionMethod();
// } catch(e){
  // *비동기 예외 미캡처: createExceptionMethod()는 비동기 함수이고, 내부에서 Future.delayed를
  // *사용하여 예외를 발생시키지만, 이 예외는 일반적인 try-catch 블록으로 잡히지 않습니다.
  // *await 누락: 비동기 함수 내에서 발생하는 예외를 잡으려면 await 키워드를 사용해야 합니다.
//   print("예외! : $e");
// }
  print("예외 처리 시작!");
 await handleException();
 //  handleExceptionWithThen();
  print("예외 처리 완료!");

}

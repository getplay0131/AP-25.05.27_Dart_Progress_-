// 4-2: 간단한 비동기 퀴즈 앱
// 1. 간단한 퀴즈 앱을 구현하세요:

// - getQuestion(): 1초 후 퀴즈 질문을 반환하는 함수
// - 3개의 질문을 순차적으로 표시하고 답변 확인
Future<String> getQuestion(int questionNumber) async {
// 여기에 코드를 작성하세요 (미리 정의된 질문 반환)
  List<String> questions = ["한글을 만든 사람은?","투자의 용어로서 기본 자금을 뜻하는 용어는?",
      "동기와 비동기의 차이는?"];
  if (questionNumber < questions.length) {
    await Future.delayed(Duration(seconds: 1));
    return questions[questionNumber];
  }  else {
    return " 질문 순서 오류!";
  }
}

// - getAnswer(String question): 1초 후 해당 질문의 답을 반환하는 함수
Future<String> getAnswer(String question, int time) async {
// 여기에 코드를 작성하세요 (질문에 맞는 답변 반환)
  await Future.delayed(Duration(seconds: time));
  List<String> answers = ["세종대왕","시드머니", "대기와 미대기"];
  if (question == "한글을 만든 사람은?") {
    return answers[0];
  }  else if(question == "투자의 용어로서 기본 자금을 뜻하는 용어는?") {
    return answers[1];
  } else if( question == "동기와 비동기의 차이는?"){
    return answers[2];
  } else {
    return"해당 내용의 질문이 등록되지 않았습니다.";
  }
}

// 퀴즈 실행
void runQuizApp() async {
 print("퀴즈를 시작합니다!");
// 여기에 코드를 작성하세요
   for(int i = 0; i < 3; i++){
     print("\n=== 문제 ${i+1} ===");
    var question = await getQuestion(i);
    print("$question");
     print("답변을 준비하고 있습니다...");
    var answer = await getAnswer(question,3);
    print("${answer}");
  }
print("퀴즈가 종료되었습니다!");
}

Future<void> runQuizAppWithTimestamp() async {
  print("퀴즈를 시작합니다!");

  for(int i = 0; i < 3; i++){
    print("질문 ${i+1} 로딩 중...");
    var startTime = DateTime.now();

    var question = await getQuestion(i);
    var questionTime = DateTime.now();
    print("질문 로딩 완료 (${questionTime.difference(startTime).inMilliseconds}ms)");

    print("답변 검색 중...");
    var answer = await getAnswer(question,3);
    var answerTime = DateTime.now();
    print("답변 검색 완료 (${answerTime.difference(questionTime).inMilliseconds}ms)");

    print("Q${i+1}: ${question}");
    print("A${i+1}: ${answer}");
    print("---");
  }

  print("퀴즈가 종료되었습니다!");
}

main() async {
  runQuizApp();
 //  await runQuizAppWithTimestamp();
}


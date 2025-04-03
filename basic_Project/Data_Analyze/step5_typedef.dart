// step5_typedef.dart

void main() {
  // 샘플 데이터
  // TODO: 숫자 리스트 데이터 만들기

  // 5-A: 간단한 typedef 정의하기
  // TODO: 정수 2개를 받아 정수를 반환하는 함수 타입 정의하기
  // typedef IntOperation = int Function(int a, int b);

  // 5-B: typedef를 활용한 함수 변수 선언
  // TODO: 위에서 정의한 typedef 타입의 변수 선언하기
  // TODO: 더하기 함수 구현하고 typedef 변수에 할당하기
  // TODO: 빼기 함수 구현하고 typedef 변수에 할당하기

  // 5-C: 함수를 파라미터로 전달하기
  // TODO: IntOperation 타입의 파라미터를 받는 함수 만들기
  // 함수 시그니처: int performOperation(int x, int y, IntOperation operation)
  // TODO: 다양한 연산 함수를 파라미터로 전달하여 호출하기

  // 5-D: 다양한 함수 전환해보기
  // TODO: 조건에 따라 다른 함수를 선택하여 실행하기
  // 예: IntOperation operation = userInput == "add" ? add : subtract;

  // 힌트: typedef는 함수 타입에 별칭을 부여하는 기능입니다
  // 힌트: typedef 정의 문법 - typedef 이름 = 반환타입 Function(파라미터들);
  // 힌트: 함수를 변수처럼 다른 함수에 전달할 수 있습니다
}

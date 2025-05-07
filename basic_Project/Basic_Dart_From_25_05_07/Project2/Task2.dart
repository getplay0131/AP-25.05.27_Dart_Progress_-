// 1. 다음 typedef를 정의하세요:
// - MathOperation: 두 개의 정수를 받아 정수를 반환하는 함수 타입
typedef MathOperation = int Function(int a, int b);
main() {
  // 2. 다음 화살표 함수를 MathOperation 타입으로 정의하세요:
// - add: 두 수를 더하는 함수
MathOperation add = (int a, int b) => a+b;
// - subtract: 두 수를 빼는 함수
MathOperation subtract = (int a, int b) => a-b;
// - multiply: 두 수를 곱하는 함수
MathOperation multiply = (int a, int b) => a*b;
// - divide: 두 수를 나누는 함수 (결과는 정수로 반환, 힌트: ~/ 연산자 사용)
MathOperation divide = (int a, int b)=> a~/b; // ~/ 연산자는 몫을 정수로 반환하며, 소수점 이하는
// 버린다. 일반 double은 정수를 반환하며 소수점 이하도 표출하는 것과 다르다.

// 3. 다음 함수를 작성하세요:
// - 이름: performOperation
// - 파라미터:
//   * int a
//   * int b
//   * MathOperation operation
// - 동작: operation 함수를 사용하여 a와 b에 대한 연산 수행
// 4. 위에서 정의한 모든 함수를 호출하고 결과를 출력하세요
print(add(1,1));
print(subtract(2,1));
print(multiply(1,2));
print(divide(2,1));

print(performOperation(3, 2, multiply));
}

int performOperation(int a, int b, MathOperation operation){
  return operation(a,b);
}

// step4_arrow_functions.dart

void main() {
  // 샘플 데이터
  // TODO: 몇 개의 샘플 리스트 만들기
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [10, 20, 30, 40, 50];
  List<int> list3 = [100, 200, 300, 400, 500];
  int result1 = addTwoNumberInList(list1, list2);
  print('result1 : $result1');
}

// 4-A: 간단한 화살표 함수 만들기
// TODO: 두 수를 더하는 화살표 함수 만들기
// 함수 시그니처: int add(int a, int b) => a + b;
int addTwoNumber(int num1, int num2) => num1 + num2;

int addTwoNumberInList(List<int> num1, List<int> num2) {
  if (num1.length != num2.length) {
    print('에러 발생 : 두 매개변수의 길이가 다름!');
    return 0;
  }

  int total = 0;
  for (var i = 0; i < num1.length; i++) {
    total += num1[i] + num2[i];
    print('total : $total');
  }
  return total;
}
  // TODO: 함수 호출하여 결과 확인하기

  // 4-B: 화살표 함수를 변수에 저장하기
  // TODO: 숫자를 제곱하는 화살표 함수를 변수에 저장하기
  // 예: var square = (int n) => n * n;
  // TODO: 저장된 함수 호출하여 결과 확인하기

  // 4-C: 데이터 필터링 함수 만들기
  // TODO: 리스트에서 짝수만 필터링하는 함수 만들기 (화살표 함수 활용)
  // TODO: 리스트에서 특정 값보다 큰 요소만 필터링하는 함수 만들기

  // 4-D: map, where 등 고차 함수 사용해보기
  // TODO: 리스트의 모든 요소에 10을 더하는 map 함수 사용하기
  // 예: final newList = numbers.map((n) => n + 10).toList();
  // TODO: 리스트에서 5보다 큰 요소만 필터링하는 where 함수 사용하기
  // TODO: 결과 출력하기

  // 힌트: 화살표 함수 문법 - (파라미터) => 표현식;
  // 힌트: map 함수는 각 요소를 변환, where 함수는 조건에 맞는 요소만 필터링합니다
  // 힌트: 함수 변수에 저장 예 - var myFunc = (int x) => x * 2;

// step3_function_parameters.dart
// 25.04.06 다시 풀이 결정!
import 'dart:ffi';

void main() {
  // 샘플 데이터
  // TODO: 몇 개의 샘플 리스트 만들기
  List<num> list1 = [1, 2, 3, 4, 5];
  List<num> list2 = [10, 20, 30, 40, 50];
  List<num> list3 = [1.2, 3, 5.1, 10, 7.5];

  // 함수 시그니처: double weightedSum(List<int> numbers, [double weight = 1.0])
  // TODO: 함수를 다양한 방식으로 호출하고 결과 출력하기 (가중치 있/없음)
}



// 3-A: 포지셔널 파라미터 활용하기
// TODO: 두 숫자를 받아 합을 반환하는 함수 만들기
// 함수 시그니처: int add(int a, int b)
// TODO: 함수 호출하고 결과 출력하기

// 3-B: 옵셔널 파라미터 추가하기
// TODO: 리스트와 가중치(옵셔널)를 받아 가중 합계를 계산하는 함수 만들기

// 3-C: 네임드 파라미터로 함수 만들기
// TODO: 리스트를 받아 조건에 따라 분석하는 함수 만들기
// 함수 시그니처: double analyze({required List<int> data, required String operation, bool printResult = true})
// 힌트: operation 값에 따라 "sum", "average", "max", "min" 중 하나의 연산 수행

// 3-D: 파라미터 기본값 설정하기
// TODO: 네임드 파라미터와 기본값을 활용한 함수 호출 테스트

// 힌트: 옵셔널 파라미터는 대괄호 []로 감싸고 기본값을 지정할 수 있어요
// 힌트: 네임드 파라미터는 중괄호 {}로 감싸고 required 키워드로 필수 여부 지정할 수 있어요
// 힌트: 네임드 파라미터 호출 예 - analyze(data: myList, operation: "sum")
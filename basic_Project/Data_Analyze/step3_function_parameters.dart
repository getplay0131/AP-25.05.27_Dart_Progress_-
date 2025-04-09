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
  double testFunction(List<num> numbers, [double hideNums = 1.0]) =>
      (numbers.reduce((a, b) => a + b) + hideNums).toDouble();

  double result1 = testFunction(list1);
  print("result : $result1");

  double result2 = analyze(data: list2, option: selectFunction.average);
  print("result2 : $result2");

  // 3-D: 파라미터 기본값 설정하기
  // TODO: 네임드 파라미터와 기본값을 활용한 함수 호출 테스트

  // 힌트: 옵셔널 파라미터는 대괄호 []로 감싸고 기본값을 지정할 수 있어요
  // 힌트: 네임드 파라미터는 중괄호 {}로 감싸고 required 키워드로 필수 여부 지정할 수 있어요
  // 힌트: 네임드 파라미터 호출 예 - analyze(data: myList, operation: "sum")
  // ** 노트 : 이넘 매개변수로 사용 방법 기억하기
  double result3 = analyze(data: list3, option: selectFunction.max);
  print("result3 : $result3");
}

// 3-A: 포지셔널 파라미터 활용하기
// TODO: 두 숫자를 받아 합을 반환하는 함수 만들기
// 함수 시그니처: int add(int a, int b)
// TODO: 함수 호출하고 결과 출력하기
num add(num a, num b) => a + b;

// 3-B: 옵셔널 파라미터 추가하기
// TODO: 리스트와 가중치(옵셔널)를 받아 가중 합계를 계산하는 함수 만들기
num optionAdd(num a, [num b = 10]) => a + b;

// 3-C: 네임드 파라미터로 함수 만들기
// TODO: 리스트를 받아 조건에 따라 분석하는 함수 만들기
// 함수 시그니처: double analyze({required List<int> data, required String operation, bool printResult = true})
// 힌트: operation 값에 따라 "sum", "average", "max", "min" 중 하나의 연산 수행
// **노트 : 이넘 사용법 익히기!
enum selectFunction { sum, average, max, min }

double analyze({
  required List<num> data,
  required selectFunction option,
  bool printOption = true,
}) {
  double resultValue = 0;
  if (data.isEmpty) {
    print("입력값이 올바르지 않습니다.");
    return -1;
  }

  if (option == selectFunction.sum) {
    resultValue = sum(data, option);
  } else if (option == selectFunction.average) {
    resultValue = average(data, option);
  } else if (option == selectFunction.max) {
    resultValue = max(data, option);
  } else if (option == selectFunction.min) {
    resultValue = min(data, option);
  }

  if (printOption) {
    print("resultValue : $resultValue");
  }

  return resultValue;
}

double sum(List<num> data, selectFunction option) {
  if (option == selectFunction.sum) {
    return data.reduce((a, b) => a + b).toDouble();
  }
  print("입력 값이 올바르지 않습니다. 더하기에 실패하였습니다.");
  return -1;
}

double average(List<num> data, selectFunction option) {
  if (option == selectFunction.average) {
    return (sum(data, selectFunction.sum) / data.length).toDouble();
  }
  print("입력 값이 올바르지 않습니다. 평균 계산에 실패하였습니다.");
  return -1;
}

double max(List<num> data, selectFunction option) {
  if (option == selectFunction.max) {
    return data.reduce((a, b) => a > b ? a : b).toDouble();
  }
  print("입력 값이 올바르지 않습니다. 최댓값 계산에 실패하였습니다.");
  return -1;
}

double min(List<num> data, selectFunction option) {
  if (option == selectFunction.min) {
    return data.reduce((a, b) => a > b ? b : a).toDouble();
  }
  print("입력 값이 올바르지 않습니다. 최솟솟값 계산에 실패하였습니다.");
  return -1;
}

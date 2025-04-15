// step2_basic_functions.dart

void main() {
  // 샘플 데이터
  // TODO: 월별 판매량 리스트 만들기 (1단계와 동일한 데이터)
  List<num> monthSellCountList = [10, 12.5, 15, 17, 20, 30.5];
  num sumResult = sum(monthSellCountList);
  num aveResult = average(monthSellCountList);
  num maxResult = findMax(monthSellCountList);
  num minResult = findMin(monthSellCountList);

  // 2-D: 함수를 호출하고 결과 출력하기
  // TODO: 위에서 만든 함수들을 호출하여 결과 출력하기
  // TODO: 예: "합계: [결과]", "평균: [결과]" 형식으로 출력
  print(
    '합계 : $sumResult , 평균 : $aveResult , 최대값 : $maxResult , 최솟값 : $minResult',
  );
}

// 2-A: 합계(sum) 함수 만들기
// TODO: 숫자 리스트를 받아 모든 요소의 합을 반환하는 함수 작성하기
// 함수 시그니처: int sum(List<int> numbers)
num sum(List<num> numList) {
  num total = 0;
  // for (var nums in numList) {
  //   total += nums;
  // }
  // print('$total');
  if (numList.isEmpty) {
    return 0;
  }
  // ** 노트 : list.reduce : 값들을 하나씩 가져와 누적 => for-in반복문과 역할 비슷
  total = numList.reduce((a, b) => a + b);
  // print('total : $total');
  return total;
}

// 2-B: 평균(average) 함수 만들기
// TODO: 숫자 리스트를 받아 평균값을 반환하는 함수 작성하기
// 함수 시그니처: double average(List<int> numbers)
// 힌트: 평균 = 합계 / 개수, 이 때 합계 함수를 재사용할 수 있어요
double average(List<num> numList) {
  return sum(numList) / numList.length;
}

// 2-C: 최대값(max)과 최소값(min) 함수 만들기
// TODO: 숫자 리스트를 받아 최대값을 반환하는 함수 작성하기
// 함수 시그니처: int findMax(List<int> numbers)
num findMax(List<num> numList) {
  num maxValue = numList.reduce((a, b) => a > b ? a : b);
  // print('maxValue : $maxValue');
  return maxValue;
}

// TODO: 숫자 리스트를 받아 최소값을 반환하는 함수 작성하기
// 함수 시그니처: int findMin(List<int> numbers)
num findMin(List<num> numList) {
  num minValue = numList.reduce((a, b) => a > b ? b : a);
  // print('minValue : $minValue');
  return minValue;
}



  // 힌트: 함수 내에서 초기값을 설정하고, 반복문으로 모든 요소 처리하기
  // 힌트: 최대값 찾기 - 첫 번째 요소를 최대값으로 초기화 후, 더 큰 값 나오면 갱신
  // 힌트: 최소값 찾기 - 첫 번째 요소를 최소값으로 초기화 후, 더 작은 값 나오면 갱신

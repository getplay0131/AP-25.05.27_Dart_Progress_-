// step1_basic_data.dart

void main() {
  // 1-A: 간단한 숫자 리스트 만들기
  // TODO: 월별 판매량 데이터를 담는 정수 리스트 만들기
  List<int> monthSellCount = [10, 20, 30, 40, 50];
  // TODO: 일일 방문자 수 데이터를 담는 정수 리스트 만들기
  List<int> monthVisiter = [5, 8, 4, 10, 15];
  // TODO: 제품 평점 데이터를 담는 소수점 리스트 만들기
  List<double> productAverageScore = [1.2, 3.0, 4.5, 5.0, 2.8];

  // 1-B: 리스트 요소 접근하고 출력하기
  // TODO: 첫 번째 리스트의 첫 번째, 세 번째 요소 출력하기
  print('첫번째 요소 : ${monthSellCount[0]} , 두번째 요소 : ${monthSellCount[2]}');
  // TODO: 두 번째 리스트의 마지막 요소 출력하기 (length 속성 활용)
  print('마지막 요소 : ${monthVisiter[monthVisiter.length - 1]}');
  // TODO: 세 번째 리스트의 모든 요소 출력하기
  print('$productAverageScore');

  // 1-C: for-in 반복문으로 데이터 순회하기
  // TODO: 첫 번째 리스트를 for-in 반복문으로 순회하며 각 요소 출력하기
  // TODO: 두 번째 리스트를 for-in 반복문으로 순회하며 각 요소에 10을 더한 값 출력하기
  // TODO: 세 번째 리스트를 for-in 반복문으로 순회하며 평점이 4.0 이상인 요소만 출력하기

  // 힌트: 리스트 선언 방법 - List<타입> 이름 = [값1, 값2, ...];
  // 힌트: 리스트 요소 접근 방법 - 리스트이름[인덱스]
  // 힌트: 마지막 요소 접근 방법 - 리스트이름[리스트이름.length - 1]
  // 힌트: for-in 반복문 문법 - for (var 요소 in 리스트) { ... }
}

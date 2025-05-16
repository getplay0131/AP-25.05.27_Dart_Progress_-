//과제 1: 컬렉션 처리
// 다음과 같은 정수 리스트가 있습니다:

 main() {
   final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// 1. map을 사용하여 numbers의 각 요소를 제곱한 새 리스트를 만드세요
     var numList = numbers.map((n)=>n*n).toList();
     print(numList);
// 2. where를 사용하여 numbers에서 짝수만 필터링한 리스트를 만드세요
var evenList = numbers.where((n)=> n%2==0).toList();
print(evenList);
// 3. reduce를 사용하여 numbers의 모든 요소의 합을 계산하세요
var reduce = numbers.reduce((n,m)=>n+m);
print(reduce);
// 4. fold를 사용하여 numbers의 모든 요소를 곱한 값을 계산하세요
var fold = numbers.fold<int>(1, (n,m)=>n*m);
print(fold);
// 5. 다음 조건을 충족하는 새 리스트를 만드세요:
// - numbers의 홀수 요소만 선택
// - 선택된 요소를 3배
// - 결과 값이 15보다 큰 요소만 필터링
// (힌트: where, map, where를 체이닝)
 var list = numbers.where((n)=>n%2==1).map((n)=>n*3).where((n)=>n > 15)
     .toList();
 print(list);
 }

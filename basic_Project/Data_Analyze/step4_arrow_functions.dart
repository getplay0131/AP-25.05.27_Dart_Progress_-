// step4_arrow_functions.dart

void main() {
  // 샘플 데이터
  // TODO: 몇 개의 샘플 리스트 만들기
  // 리스트는 숫자 데이터를 담고 있으며, 이후 다양한 함수에서 활용됩니다.
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [10, 20, 30, 40, 50];
  List<int> list3 = [100, 200, 300, 400, 500];

  // TODO: 함수 호출하여 결과 확인하기
  // 아래에서 작성한 함수들을 호출하여 결과를 출력하세요.
  print(squareNums(8));
  print(sumNumbers(list2));
  print(findBiggerWhere(list2));
  print(findBiggerMap(list2));
}

// 4-A: 간단한 화살표 함수 만들기
// TODO: 두 수를 더하는 화살표 함수 만들기
// 화살표 함수는 간단한 표현식(한 줄)으로 함수를 정의할 때 사용됩니다.
// 문법: (파라미터) => 표현식;
// 예: int add(int a, int b) => a + b;
// 아래에 두 수를 더하는 화살표 함수를 작성하세요.
int addTwoNumber(int a, int b) => a + b;

// 4-B: 화살표 함수를 변수에 저장하기
// TODO: 숫자를 제곱하는 화살표 함수를 변수에 저장하기
// **노트 : 화살표 함수는 바로 변수에 함수를 저장 할 수 있다.
// 화살표 함수는 함수 자체를 변수에 저장할 수 있습니다.
// 문법: var 함수이름 = (파라미터) => 표현식;
// 예: var square = (int n) => n * n;
// 저장된 함수를 호출하여 결과를 출력하세요.
// 예: print(square(5)); // 출력: 25
var squareNums = (int n) => n * n;

// 4-C: 데이터 필터링 함수 만들기
// TODO: 리스트에서 짝수만 필터링하는 함수 만들기 (화살표 함수 활용)
// 리스트에서 특정 조건에 맞는 요소만 필터링하려면 `where` 메서드를 사용합니다.
// 문법: 리스트.where((요소) => 조건).toList();
// 예: 짝수만 필터링: list.where((n) => n % 2 == 0).toList();
// **노트 : to~메서드로 된 함수는 해당 타입으로 반환하거나 함수의 반환 타입도 해당 타입으로 맞춰주어야 한다.
List<int> findEven(List<int> nums) => nums.where((n) => n % 2 == 0).toList();

// TODO: 리스트에서 특정 값보다 큰 요소만 필터링하는 함수 만들기
// 특정 값보다 큰 요소를 필터링하려면 조건을 수정하면 됩니다.
// 예: list.where((n) => n > 10).toList();
// **노트 : where나 reduce는 다 문법이 다음과 같다.
List<int> findBigger(List<int> nums) => nums.where((n) => n > 10).toList();

// 4-D: map, where 등 고차 함수 사용해보기
// TODO: 리스트의 모든 요소에 10을 더하는 map 함수 사용하기
// `map` 메서드는 리스트의 각 요소를 변환하여 새로운 리스트를 만듭니다.
// 문법: 리스트.map((요소) => 변환식).toList();
// 예: list.map((n) => n + 10).toList();
// **노트 map메서드는 리스트의 각 요소에 작업을 해서 새 리스트를 반환한다.
List<int> sumNumbers(List<int> nums) => nums.map((n) => n + 10).toList();

// TODO: 리스트에서 5보다 큰 요소만 필터링하는 where 함수 사용하기
// `where` 메서드는 조건에 맞는 요소만 필터링하여 새로운 리스트를 만듭니다.
// 문법: 리스트.where((요소) => 조건).toList();
// TODO: 결과 출력하기
// 위에서 작성한 map과 where 메서드를 활용하여 결과를 출력하세요.
// **노트 : map 메서드는 조건이 들어가면 불린을 반환한다. 단순 연산일때는 해당 타입으로 반환하지만, 조건을 판단할때는 반환이 불리언인것을 기억해야한다.
List<int> findBiggerWhere(List<int> nums) =>
    nums.where((n) => (n / 2) > 15).toList();

List<bool> findBiggerMap(List<int> nums) => nums.map((n) => n > 15).toList();

// 힌트: 화살표 함수 문법 - (파라미터) => 표현식;
// 화살표 함수는 간단한 로직을 한 줄로 작성할 때 유용합니다.
// 예: int add(int a, int b) => a + b;

// 힌트: map 함수는 각 요소를 변환, where 함수는 조건에 맞는 요소만 필터링합니다
// map: 리스트의 각 요소를 변환하여 새로운 리스트를 만듭니다.
// where: 조건에 맞는 요소만 필터링하여 새로운 리스트를 만듭니다.

// 힌트: 함수 변수에 저장 예 - var myFunc = (int x) => x * 2;
// 함수 자체를 변수에 저장하면 재사용이 가능합니다.
// 예: print(myFunc(5)); // 출력: 10

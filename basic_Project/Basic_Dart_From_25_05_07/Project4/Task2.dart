// 과제 2: 고급 함수형 패턴
// 다음과 같은 사용자 데이터 리스트가 있습니다:
final users = [
{'name': '김철수', 'age': 25, 'active': true},
{'name': '이영희', 'age': 31, 'active': false},
{'name': '박민수', 'age': 28, 'active': true},
{'name': '정지원', 'age': 22, 'active': true},
{'name': '홍길동', 'age': 35, 'active': false},
];

// 1. map을 사용하여 사용자의 이름만 추출한 리스트를 만드세요

// 2. where를 사용하여 active가 true인 사용자만 필터링하세요

// 3. 함수형 메서드를 사용하여 다음을 계산하세요:
// - 사용자들의 평균 나이
// - 가장 나이가 많은 사용자의 이름
// - 가장 나이가 적은 active 사용자의 이름

// 4. 사용자 데이터를 다음과 같이 변환하세요:
// - 이름을 키로, 나이를 값으로 하는 Map<String, int> 생성
// (힌트: fold 또는 reduce 활용)

// 5. 캐스케이딩 연산자(.../cascade operator)를 사용하여
// 리스트에 여러 작업을 연속적으로 수행하는 예제를 작성하세요

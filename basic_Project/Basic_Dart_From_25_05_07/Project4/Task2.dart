
// 과제 2: 고급 함수형 패턴
// 다트는 이렇게 생각합니다:
//
// "맵에서 ["age"]라는 키로 값을 가져오라고 했는데, 그 키가 실제로 존재하는지, 있다면 그 값이 어떤 타입인지 컴파일 시점에는 확신할 수 없어. 그래서 일단 가장 안전한 Object? 타입으로 간주할게."
//
// 그리고 개발자는:
//
// "나는 이 값이 실제로 int 타입임을 알고 있으니, as int로 명시적으로 캐스팅할게."
// 다트의 정적 타입 안전성(static type safety) 원칙 때문
main() {

// 다음과 같은 사용자 데이터 리스트가 있습니다:
final users = [
{'name': '김철수', 'age': 25, 'active': true},
{'name': '이영희', 'age': 31, 'active': false},
{'name': '박민수', 'age': 28, 'active': true},
{'name': '정지원', 'age': 22, 'active': true},
{'name': '홍길동', 'age': 35, 'active': false},
];

// 1. map을 사용하여 사용자의 이름만 추출한 리스트를 만드세요
var list = users.map((n)=>n["name"]).toList();
print(list);

// 2. where를 사용하여 active가 true인 사용자만 필터링하세요
var list2 = users.where((n)=>n["active"] == true).map((n)=>n["name"]).toList();
print(list2);
// 3. 함수형 메서드를 사용하여 다음을 계산하세요:
// - 사용자들의 평균 나이
var averageAge = users.map((n)=>n["age"] as int ).reduce((n,m)=>n+m)/users.length;
var list3 = averageAge;
print(list3);

// - 가장 나이가 많은 사용자의 이름
users.
// - 가장 나이가 적은 active 사용자의 이름


// 4. 사용자 데이터를 다음과 같이 변환하세요:
// - 이름을 키로, 나이를 값으로 하는 Map<String, int> 생성
// (힌트: fold 또는 reduce 활용)

// 5. 캐스케이딩 연산자(.../cascade operator)를 사용하여
// 리스트에 여러 작업을 연속적으로 수행하는 예제를 작성하세요
}

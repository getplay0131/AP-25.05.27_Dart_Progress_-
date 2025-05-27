import 'dart:ffi';

main() {
  // 1. 다음과 같은 변수들을 선언하세요:
// - 정수형 변수 age (값: 25)
int age = 25;
// - 문자열 변수 name (값: '홍길동')
String name = "홍길동";
// - 실수형 변수 height (값: 175.5)
double height = 175.5;
// - nullable 문자열 변수 nickname (초기값: null)
String? nickname = null;
// - dynamic 타입 변수 something (초기값: '안녕하세요')
dynamic something = "안녕하세요";

printType(nickname);

// 3. nullable 변수 nickname에 '길동이'를 할당하고 출력하세요
nickname = "길동이";

  print(nickname);

// 4. dynamic 변수 something에 숫자 42를 할당하고 출력하세요
print(something = 42);
// print(something);

// 5. 문자열 템플릿을 사용하여 "제 이름은 [name]이고, 나이는 [age]세, 키는 [height]cm입니다." 형식으로 출력하세요
print("제 이름은 $name 이고, 나이는 $age세, 키는 $height cm입니다.");
}

// 2. 각 변수의 타입을 출력하는 코드를 작성하세요 (runtimeType 활용)
void printType(dynamic temp){
  print(temp.runtimeType);
}
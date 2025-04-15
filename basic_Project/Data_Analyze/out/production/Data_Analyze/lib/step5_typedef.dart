// step5_typedef.dart

void main() {
  // 샘플 데이터
  // TODO: 숫자 리스트 데이터 만들기
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [10, 20, 30, 40, 50];
  List<int> list3 = [11, 21, 13, 41, 25];

  print(choiceOperation("add", 5, 10));
  print(choiceOperation("sub", 15, 10));
}

// 5-A: 간단한 typedef 정의하기
// typedef는 함수 타입에 별칭을 부여하는 기능입니다.
// 복잡한 함수 타입을 간단하게 표현할 수 있습니다.
// 예를 들어, 두 개의 정수를 받아 정수를 반환하는 함수 타입을 정의할 수 있습니다.
// 문법: typedef 이름 = 반환타입 Function(파라미터들);
// 아래는 두 개의 정수를 받아 정수를 반환하는 함수 타입의 예입니다:
// typedef IntOperation = int Function(int a, int b);
//** 노트 : 타입데프는 함수의 타입의 별명을 부여하는 것이다. 즉 함수의 규격을 세우는 것이다. 비유하자면 함수를 담을 박스의 이름을 정한다고 생각하자. 그럼 해당 함수가 필요할때 해당 박스에서 무슨 함수에 값을 전달하는 걸로 생각하면 된다.
typedef intOperation = int Function(int a, int b);

// 5-B: typedef를 활용한 함수 변수 선언
// typedef로 정의한 타입을 사용하여 함수 변수를 선언할 수 있습니다.
// 예를 들어, IntOperation 타입의 변수를 선언하고, 여기에 함수를 할당할 수 있습니다.
// 1. 더하기 함수 구현하기
//    두 정수를 더하는 함수를 작성하고 typedef 변수에 할당합니다.
// 2. 빼기 함수 구현하기
//    두 정수를 빼는 함수를 작성하고 typedef 변수에 할당합니다.
// 예:
// IntOperation add = (int a, int b) => a + b;
// IntOperation subtract = (int a, int b) => a - b;
// ** 노트 : 불리언 인트 처럼 타입중에 하나이다. 해당 타입의 값으로 화살표 함수를 사용해 함수를 변수에 저장하는 것이다. add를 호출하면 해당 기능을 가진 함수를 호출하는 거지!
intOperation add = (a, b) => a + b;
intOperation subtract = (a, b) => a - b;

// 5-C: 함수를 파라미터로 전달하기
// typedef를 사용하면 함수를 다른 함수의 파라미터로 전달할 수 있습니다.
// 예를 들어, IntOperation 타입의 파라미터를 받는 함수를 작성할 수 있습니다.
// 함수 시그니처: int performOperation(int x, int y, IntOperation operation)
// 이 함수는 두 정수와 IntOperation 타입의 함수를 받아서, 해당 함수로 연산을 수행합니다.
// 다양한 연산 함수를 파라미터로 전달하여 호출할 수 있습니다.
// 예:
// int result = performOperation(10, 5, add); // add 함수 전달
// int result = performOperation(10, 5, subtract); // subtract 함수 전달
// **노트 : 함수를 인자로 받고 다시 해당 함수에 받은 매개변수를 전달하는 함수를 구성한다. 즉 함수 구성이랑 같지만 반환을 해당 타입의 함수를 하는 것이다.
int useOperation(int a, int b, intOperation operation) {
  return operation(a, b);
}

// 5-D: 다양한 함수 전환해보기
// 조건에 따라 다른 함수를 선택하여 실행할 수 있습니다.
// 예를 들어, 사용자가 입력한 값에 따라 add 또는 subtract 함수를 선택할 수 있습니다.
// 조건문이나 삼항 연산자를 사용하여 함수를 선택합니다.
// 예:
// IntOperation operation = userInput == "add" ? add : subtract;
// int result = operation(10, 5);
//**노트 : 이제 사용자의 입력을 받아서 함수에 인자를 전달할 로직을 구현하면 된다. 이 로직은 메인 메서드에서 호출해서 사용하면 되고
int choiceOperation(String text, int a, int b) {
  if (text.isEmpty) {
    return -1;
  }
  if (text.contains("add")) {
    return useOperation(a, b, add);
  } else if (text.contains("sub")) {
    return useOperation(a, b, subtract);
  }
  return -1;
}

// 힌트: typedef는 함수 타입에 별칭을 부여하는 기능입니다.
// typedef를 사용하면 복잡한 함수 타입을 간단하게 표현할 수 있습니다.
// typedef 정의 문법: typedef 이름 = 반환타입 Function(파라미터들);
// 함수를 변수처럼 다른 함수에 전달할 수 있습니다.
// 이를 통해 코드의 재사용성과 가독성을 높일 수 있습니다.

void main(List<String> args) {
  Operation operation = add;
  int result = operation(10, 20, 30);
  print("result = $result");

  int test = add(10, 20, 30);
  print("test : $test");
}

// 타입 데프와 파라미터의 개수와 형태, 반환 타입이 같아야 타입 데프에 함수를 변수의 값 저장하듯이 사용할수 있다. => 그냥 함수를 호출해서 그 값을 출력하는 거랑 뭐가 다르지?
typedef Operation = int Function(int x, int y, int z);

// 더하기
int add(int x, int y, int z) => x + y + z;

// 빼기
int subtract(int x, int y, int z) => x - y - z;

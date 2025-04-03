void main(){
  // map
  // map은 키와 값으로 이루어져 있고, 리스트와 달리 두개의 타입을 넣어주어야 한다.
  // 문법은 키 : 값 이다.
  // 키로 해당 값을 찾는다
  Map<String, int> test = {
    'weight' : 95,
    'height' : 180,
    'age' : 32
  };
  print(test);
  print(test['age']);
  test['age'] = 25;
  print(test);;
}
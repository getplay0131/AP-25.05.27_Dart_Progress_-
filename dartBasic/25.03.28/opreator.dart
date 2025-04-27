void main() {
  int number1 = 5;

  print(number1++); // 후위증산자 : 해당 값을 불러오고 이후에 더함
  print(number1);

  String? num = '1';
  print(num);
  num = null;
  num ??= '3';
  print(num);

  int num1 = 5;
  int num2 = 7;
  print(num1 > num2);
  print(num1 < num2);

  print(num1 is int);
}

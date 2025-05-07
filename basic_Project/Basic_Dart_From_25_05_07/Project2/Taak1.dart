main() {
  print(greeting("윤승현"));
  print(greeting("윤승현","환영합니다"));
  var greeting2 = greeting("송지효");
  print(greeting2);

  var result = calculateTotal(price: 5000, quantity: 5);
  print("$result 원");

  var result2 = calculateTotal(price: 1000, quantity: 3, discountRate: 0.5);
  print("$result2 원");

  print("${calculateTotal(price: 3000, quantity: 4)} 원");

}
String greeting(String name, [String gretting = "안녕하세요!"]){
  return "$gretting $name 님!";
}

int calculateTotal({required double price, required int quantity, double
discountRate = 0.0}){
  return (price * quantity * (1 - discountRate)).toInt();
}
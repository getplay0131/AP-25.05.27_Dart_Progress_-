// 1. 간단한 상품(Product) 클래스를 만드세요:
// - 필드:
//   * final String name
//   * final double price
//   * int stock
// - 생성자: 모든 필드 초기화
// - 메서드:
//   * sell(int quantity): 재고에서 quantity만큼 감소, 재고가 부족하면 예외 발생
//   * restock(int quantity): 재고에 quantity만큼 추가
//   * getInfo(): 상품 정보 문자열 반환
class Product{
  final String name;
  final double price;
  int stock;

  Product({required this.name,required this.price,required this.stock});

void sell(int quantity){
try{
  if (stock < quantity) {
//   클로드와의 대화에서 예외 관련 지식 주석으로 정리하고 진행하기
//   예외 발생시키기
    throw (InsufficientStockException(currentStock: stock, quantityCount:
    quantity));
  }
  stock -= quantity;
//   해당 에러만 처리한다.
} on InsufficientStockException catch(e){
  print("에러 발생 : ${e.message}");
//   on으로 잡는 에러 제외 모든 에러를 잡는다.
} catch(e){
  print("미확인 예외 발생! $e");
}
}

void restock(int quantity){
  stock += quantity;
}

String getInfo(){
  return "상품 이름 : $name , 가격 : $price , 수량 : $stock";
}

}


// 2. ShoppingCart 클래스를 만드세요:
// - 필드:
//   * Map<Product, int> items (상품과 수량을 매핑)
// - 생성자: 빈 맵으로 items 초기화
// - 메서드:
//   * addItem(Product product, int quantity): 장바구니에 상품 추가
//   * removeItem(Product product): 장바구니에서 상품 제거
//   * getTotalPrice(): 장바구니 총 가격 계산
//   * checkout(): 장바구니의 모든 상품 구매 처리(sell 메서드 호출)
class ShoppingCart{
  // 맵을 간단히 중괄호로 초기화가 가능하다.
  late Map<Product, int>items;

  ShoppingCart(){
    items = {};
  }

  void addItem(Product product, int quantity){
  if (checkValue(product) && checkValue(quantity)) {
    items[product] = quantity;
  }
  }

  void removeItem(Product product){
    if(checkValue(product) && items.containsKey(product)){
      items.remove(product);
    } else {
      print("물픔 삭제가 실패하였습니다");
    }
  }

  double getTotalPrice(){
    double total = 0;
    for (var item in items.keys) {
      total += item.price;
    }
    print("총 금액 : $total 원");
    return total;
  }

  void checkout(){
    for (var o in items.keys) {
      o.sell(items[o]!);
    }
  }
  
  bool checkValue(Object object){
    if (object ==  null) {
    return false;
    } else if(object is int){
      if (object <= 0) {
        return false;
      }
    }
    return true;
  }


}
// 3. 여러 상품을 생성하고, 장바구니에 추가/제거한 후, 결제 과정을 시뮬레이션하세요
main() {
  final productIsMilk = new Product(name: "우유", price: 1500, stock: 5);
  final productIsRice = new Product(name: "즉석밥", price: 2500, stock: 3);
  final productIsSnack = new Product(name: "과자", price: 1500, stock: 10);
  final productIsDrink = new Product(name: "음료", price: 2000, stock: 7);
  var shoppingCart = new ShoppingCart();

  shoppingCart.addItem(productIsMilk, 2);
  shoppingCart.addItem(productIsRice, 1);
  shoppingCart.addItem(productIsDrink, 3);
  shoppingCart.addItem(productIsSnack, 4);

  for (var cart in shoppingCart.items.keys) {
    print(cart.name);
    print(cart.stock);
  }

  print("----------------");

  shoppingCart.removeItem(productIsMilk);

  for (var cart in shoppingCart.items.keys) {
    print(cart.name);
    print(cart.stock);
  }

  print("----------------");

  shoppingCart.checkout();

  for (var cart in shoppingCart.items.keys) {
    print(cart.name);
    print(cart.stock);
  }

  for (var cart in shoppingCart.items.keys) {
    print(cart.getInfo());

  }
}
class InsufficientStockException implements Exception{
  // 다트의 예외는 실제 메서드나 필드가 없다.
  // 이 키워드를 예외 클래스임을 표시하는 마커 인터페이스 이다.
  final String message;
  final int currentStock;
  final int quantityCount;

  InsufficientStockException({required this.currentStock,
    //초기화 리스트 문법 : 생성자가 실행되기 전에 해당 필드를 초기화 한다.
    // 자신의 클래스 내에 지정한 필드를 초기화
    // final로 선언된 필드는 생성자 본문에서는 초기화가 불가하고, 초기화 리스트로만 가능하다.
    // getter로 초기화도 가능
    // late키워드로 초기화시 바로 할당도 가능하다.
    required this.quantityCount}) : message = "재고가 부족합니다 현재 재고 : "
      "$currentStock , 요청된 수량 : $quantityCount" ;

  @override
  String toString() {
    return message;
  }


}
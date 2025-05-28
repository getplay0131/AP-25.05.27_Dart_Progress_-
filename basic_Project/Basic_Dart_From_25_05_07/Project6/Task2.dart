// *25.05.28 진행

// 과제 2: 다양한 클래스 유형과 Mixin
// 1. base class Vehicle을 작성하세요:
// - 필드:
//   * String model
//   * int year
// - 메서드:
//   * String getInfo() (차량 정보 반환)

//!상속만 가능 ! 구현 불가
base class Vehcle  {
final String model;
final int year;

Vehcle({required this.model,required this.year});

String getInfo(){
  return this.model.isEmpty ? "정보 없음" : "모델 : ${model}, 생산 년도 : ${year} ";
}
}

// 2. Vehicle을 상속받는 final class Car를 작성하세요:
// - 추가 필드:
//   * int doors
//   * String engineType
// - getInfo() 오버라이드
//!상속 구현, 믹스인 불가
final class Car extends Vehcle{
  final int doors;
  final String engineType;

  Car({required String model, required int year,  required this.doors,required
  this.engineType}) :
        super(model: model
      , year: year );

  @override
  String getInfo() {
    if (this.engineType.isEmpty || doors <=0) {
      print("입력값 오류!");
      return "오류 발생";
    }
    return super.getInfo() + "door : ${doors} , engine : ${engineType}";
  }


}


// 3. 다음 mixin을 정의하세요:
// - ElectricPowered: 전기차 관련 기능
//   * double batteryCapacity
//   * double getBatteryStatus()
//   * void charge()

//   * 믹스인은 생성자에서 값을 직점 받을 수 없다.
//   *게터나 추상 필드로 값을 정의하고 믹스인 사용하는 클래스에서 구현해야 한다.
//   *믹스인 클래스는 필드와 메서드는 가질수 있지만, 생성자는 직접 정의 불가하다.
abstract mixin class ElectricPowered{
  //  *추상 클래스 이므로 해당 클래스를 사용하는 쪽에서 반드시 필드들을 구현해야 한다.
  double get batteryCapacity;

  double getBatteryCapacity(){
    return batteryCapacity * 0.9;
  }

  void charge(){
    print("배터리 충전 시작!");
  }

}


// 4. sealed class Shape을 만들고, 이를 상속받는 Circle, Rectangle, Triangle 클래스를 작성하세요
// - 각 클래스는 면적을 계산하는 double getArea() 메서드를 구현
sealed class Shape{
  double getArea();
}

class Circle extends Shape{
  double width;

  Circle({required  this.width});

  @override
  double getArea() {
    return width * 0.5 * width;
  }

}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle({required this.width, required this.height});

  @override
  double getArea() {
    return width * height;
  }
}

  class Triangle extends Shape {
    double width;
    double height;

    Triangle({required this.width, required this.height});

    @override
    double getArea() {
      return width * height * 0.5;
    }
  }
// 5. 패턴 매칭을 사용하여 주어진 Shape 객체의 타입에 따라 다른 메시지를 출력하는 함수를 작성하세요
main() {
  var circle = new Circle(width: 5);
  var rectangle = new Rectangle(width: 5, height: 10);
  var triangle = new Triangle(width: 6, height: 8);

  List<Shape> shapes = [circle,rectangle,triangle];
  for (var target in shapes) {
    // *스위치 문에서 타입 매칭을 할때는 관호를 붙여서 해당 타입의 인스턴스와 매칭하는 것임을 알려주어야 한다.
    switch(target){
      case Circle(): print("원의 넓이 : ${target.getArea()}");
      case Rectangle() : print("사각형의 넓이 : ${target.getArea()}");
      case Triangle() : print("삼각형의 넓이 : ${target.getArea()}");
    }
  }
}

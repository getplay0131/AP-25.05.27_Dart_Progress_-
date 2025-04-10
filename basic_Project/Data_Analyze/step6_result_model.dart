// step6_result_model.dart

// 6-A: 기본 클래스 구조 설계하기
// TODO: AnalysisResult 클래스 정의하기
// 클래스는 객체를 생성하기 위한 설계도입니다.
// AnalysisResult 클래스는 데이터 분석 결과를 저장하고 관리하기 위한 구조를 정의합니다.
// 이 클래스는 데이터셋 이름, 분석 함수 이름, 결과 값, 분석 시간을 저장합니다.

class AnalysisResult {
  // ** 노트 : late키워드로 선언 후 이후 값 초기화가 가능하다.
  // 6-B: 멤버 변수와 생성자 구현하기
  // TODO: 데이터셋 이름 (String)
  // 데이터셋의 이름을 저장하는 변수입니다.
  final String dataSet;

  // TODO: 분석 함수 이름 (String)
  // 어떤 분석 함수가 사용되었는지 저장하는 변수입니다.
  String functions;

  // TODO: 분석 결과 값 (num)
  // 분석 결과 값을 저장하는 변수입니다. 숫자 값이므로 num 타입을 사용합니다.
  final num resultValue;

  // TODO: 분석 시간 (DateTime)
  // 분석이 수행된 시간을 저장하는 변수입니다. DateTime 타입을 사용합니다.
  final DateTime times;

  // TODO: 생성자 구현하기 (네임드 파라미터 활용)
  // 생성자는 클래스의 인스턴스를 생성할 때 호출되는 특별한 메서드입니다.
  // 네임드 파라미터를 사용하여 멤버 변수를 초기화합니다.
  // 힌트: AnalysisResult({required this.dataSet, required this.functions, required this.resultValue, required this.times})
  // 네임드 파라미터를 사용하면 인스턴스를 생성할 때 각 변수의 이름을 명시적으로 지정할 수 있습니다.
  // ** 노트 : 자바에서 할때를 생각해보자, 자바는 IDE 도움으로 자동 생성했지만, 사용할 데이터를 받고, 안에서 전체적으로 초기화 하지만, 다트는 사용할 필드를 필수로 받아서 초기화 해야한다.
  AnalysisResult({
    required this.dataSet,
    required this.functions,
    required this.resultValue,
    required this.times,
  });

  // 6-C: 메서드 추가하기
  // TODO: 결과 정보를 문자열로 반환하는 메서드 구현
  // 이 메서드는 클래스의 데이터를 문자열로 변환하여 반환합니다.
  // 예: "Dataset: myData, Function: sum, Result: 100, Time: 2025-04-10 12:00:00"
  @override
  String toString() {
    // TODO: implement toString
    return "dataset : $dataSet , functions : $functions , resultValue : $resultValue , times : $times ";
  }

  // @override
  // String toString() {
  //   // TODO: implement toString
  //   return super.toString();
  // }

  // TODO: 결과 출력 메서드 구현
  // 이 메서드는 결과 정보를 콘솔에 출력합니다.
  // 예: print("Dataset: myData, Function: sum, Result: 100, Time: 2025-04-10 12:00:00");
  void printResult() {
    print(toString());
  }

  // 6-D: final 키워드 활용하기
  // TODO: 적절한 멤버 변수에 final 키워드 적용하기
  // final 키워드는 변수를 한 번만 할당할 수 있도록 제한합니다.
  // 예를 들어, 분석 시간이 생성 시점에만 설정되고 이후 변경되지 않아야 한다면 final을 사용할 수 있습니다.
  // 힌트: final DateTime times;
}

void main() {
  // ** 노트 : 역시 자바의 생성자 문법과는 다르다. 이래서 익혀야 하는거다. 이래서 손으로 구성해보아야 한다.
  // ** 노트 : 생성한 타입을 담아야하기에 해당 타인으로 변수를 만들어서 값으로 생성자를 이용해서 객체를 만든다.
  // TODO: AnalysisResult 클래스 인스턴스 생성하기
  // AnalysisResult 클래스의 인스턴스를 생성하여 데이터를 저장합니다.
  // 예: AnalysisResult result = AnalysisResult(
  //       dataSet: "myData",
  //       functions: "sum",
  //       resultValue: 100,
  //       times: DateTime.now(),
  //     );
  AnalysisResult result = AnalysisResult(
    dataSet: "data",
    functions: "functions",
    resultValue: 100,
    times: DateTime.now(),
  );

  // TODO: 메서드 호출하여 결과 확인하기
  // 생성한 인스턴스의 메서드를 호출하여 결과를 확인합니다.
  // 예: print(result.toString());
  // 예: result.printResult();
  result.printResult();

  // 힌트: 클래스 구현 시 필요한 속성을 먼저 정의하고 생성자 구현하기
  // 힌트: final 키워드는 변수가 한 번만 할당되도록 제한합니다.
  // 힌트: DateTime.now()를 사용하여 현재 시간을 가져올 수 있습니다.
}

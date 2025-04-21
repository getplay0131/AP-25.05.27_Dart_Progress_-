// step9_error_handling.dart

// 필요한 클래스 가져오기
// TODO: (필요한 경우) 이전 단계에서 만든 클래스들을 import 또는 재정의
import 'step6_result_model.dart';
import 'step7_data_manager.dart';
import 'step8_analyzer.dart';

// ErrorHandler 클래스 정의 (선택 사항)
class ErrorHandler {
  // 오류 메시지 상수 정의
  // TODO: 자주 사용되는 오류 메시지를 상수로 정의
  final String ERROR_MESSAGE = "값이 올바르지 않음!";

  // 오류 로깅 메서드
  // TODO: 오류 메시지를 로깅하는 메서드 구현
  void getErrorMsg() {
    print(ERROR_MESSAGE);
  }

// 9-C: null 안전성 적용하기
// TODO: nullable 타입을 안전하게 처리하는 메서드 추가
// 힌트: null 체크, ?? 연산자, ?. 연산자 등을 활용
  bool checkNullValue(AnalysisResult? result) {
//   null 체크 진행
    if (result == null) {
      print("$result is null!");
      return false;
    }

// ?. 연산자는 널이 아닐때 진행한다. 반대로 !.연산자는 널이 아니라고 확신한 데이터이다. 그리고 ?? 연산자는 널이라면 그 우측 값으로 대입된다.
    if (result.dataSet?.isEmpty ?? false) {
      print("$result value is error!");
    }

// 역시 ?. 연산자로 널을 체크하고 널이라면 우측의 문자 값으로 대입된다.
    print("result.dataSetName : ${result.dataSet?.toString() ?? "Unknown"}");
    return true;
  }


// 9-D: 다양한 에러 메시지 제공하기
// TODO: 구체적인 오류 상황별 메시지 정의 및 출력 메서드 구현
  void checkValue(Object obj) {
    if (obj is String) {
      if (obj.isEmpty || obj?.length == 0) {
        print("$obj is empty or length is 0!");
      }
    } else if (obj is Function) {
      if (obj
          .toString()
          .isEmpty || obj
          .toString()
          .length == 0) {
        print("name is not normal");
      }
    } else if (obj is int) {
      if (obj < 0 || obj == 0) {
        print("value is error!");
      }
    } else {
      print("value is validData!");
    }
  }
}

// 9-A: 사용자 입력 처리하기
// 향상된 DataManager 클래스
  class ImprovedDataManager {
  // 기존 DataManager의 속성과 메서드 가져오기
  DataManager manager = new DataManager();

  // 사용자 입력 검증 메서드 추가
  // TODO: 데이터셋 이름 유효성 검사 메서드 구현
  // 함수 시그니처: bool isValidDatasetName(String name)
  bool isValidDatasetName(String name){
  if(name.isEmpty) {
  print("입력값 없음");
  return false;
  }
  return true;
  }

  // TODO: 데이터 유효성 검사 메서드 구현
  // 함수 시그니처: bool isValidData(List<num> data)
  //** 노트 : 다트에서는 instanceof가 is로 사용한다.
  bool isValidData(Object obj){
  if (obj is List) {
  if (obj.isEmpty) {
  print("List value is empty! : $obj");
  return false;
  } else if (obj is AnalysisFunction) {
  if (obj.length == 0) {
  print("AnalysisFunction is empty! : $obj");
  return false;
  }
  }
  return true;
  } else {
  print("유효성 검사 실패");
  return false;
  }
  }


  // 향상된 데이터 추가 메서드
  // TODO: 입력 검증 후 데이터 추가하는 메서드 구현
  bool addData(String name, List<int> datas){
  if (isValidDatasetName(name) && isValidData(datas)) {
  manager.addDataset(name, datas);
  return true;
  } else {
  return false;
  }
  }
  }

// 9-B: 잘못된 데이터 처리하기
// 향상된 Analyzer 클래스
class ImprovedAnalyzer {
  // 기존 Analyzer의 속성과 메서드 가져오기
  Analyzer analyzer = new Analyzer(manager: ImprovedDataManager().manager);

  // 예외 처리가 추가된 분석 메서드
  // TODO: try-catch를 사용하여 예외를 처리하는 분석 메서드 구현
  // 함수 시그니처: AnalysisResult? safeAnalyze(String datasetName, String functionName)
  AnalysisResult? safeAnalyze(String datasetName, AnalysisFunction function){
    try{
      return analyzer.runAnalysisProgram(datasetName, function);
    } catch(e){
      print("Error : $e");
      return null;
    }
  }

  // 분석 가능 여부 확인 메서드
  // TODO: 데이터셋과 분석 함수의 유효성을 확인하는 메서드 구현
bool isAnalyzePossible(String datasetName, AnalysisFunction function){
    if (new ImprovedDataManager().isValidDatasetName(datasetName) && new ImprovedDataManager().isValidData(function)){
      return true;
  }
    return false;
}
}



void main() {
  // TODO: 향상된 DataManager와 Analyzer 인스턴스 생성
  // TODO: 다양한 오류 상황 테스트 (잘못된 데이터셋 이름, 빈 데이터 등)
  // TODO: null 안전성 테스트
  // TODO: 예외 처리 테스트
  DataManager manager = new DataManager();
  ErrorHandler errorHandler = new ErrorHandler();
  Analyzer analyzer = new Analyzer(manager: manager);
  manager.datasets["first"] = [1,2,3,4,5];
  // manager.printDataset("sss");
  try{
    manager.printDataset("first");
    analyzer.manager.printDataset("sss");
    errorHandler.checkNullValue(null);
    errorHandler.checkValue(0);
  } catch(e){
    print("Error : $e");
  }




  // 힌트: try-catch 문법 - try { ... } catch (e) { ... }
  // 힌트: null 체크 - if (variable == null) { ... }
  // 힌트: null 연산자 - variable?.property, variable ?? defaultValue
}

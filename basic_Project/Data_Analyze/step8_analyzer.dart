// step8_analyzer.dart

// 필요한 클래스 가져오기
// TODO: (필요한 경우) 이전 단계에서 만든 클래스들을 import 또는 재정의

// Analyzer 클래스 정의하기
class Analyzer {
  // 8-A: 기본 분석 메서드 통합하기
  // TODO: DataManager 인스턴스 저장 변수 선언하기
  // TODO: 기본 분석 함수들을 Map으로 저장하기
  // 힌트: final Map<String, Function(List<num>)> _basicFunctions = {...};

  // 생성자 구현
  // TODO: DataManager를 매개변수로 받는 생성자 구현

  // 기본 분석 함수들 정의하기
  // TODO: 합계, 평균, 최대값, 최소값 등의 분석 함수 구현

  // 분석 실행 메서드
  // TODO: 데이터셋 이름과 분석 함수 이름을 받아 분석을 실행하는 메서드 구현
  // 함수 시그니처: AnalysisResult? analyze(String datasetName, String functionName)

  // 8-B: 사용자 정의 분석 함수 등록 기능
  // TODO: 함수 타입 정의하기 (typedef 활용)
  // 힌트: typedef AnalysisFunction = num Function(List<num>);

  // TODO: 사용자 정의 함수 저장 Map 선언하기
  // 힌트: final Map<String, AnalysisFunction> _customFunctions = {};

  // TODO: 사용자 정의 함수 등록 메서드 구현하기
  // 함수 시그니처: void registerFunction(String name, AnalysisFunction function)

  // 8-C: 분석 결과 저장 구조 만들기
  // TODO: 분석 결과 리스트 선언하기
  // 힌트: final List<AnalysisResult> _results = [];

  // TODO: 분석 결과 저장 메서드 구현하기
  // TODO: 특정 데이터셋의 모든 분석 결과 조회 메서드 구현하기

  // 8-D: 다양한 분석 결과 출력 형식 구현하기
  // TODO: 가장 최근 분석 결과 출력 메서드 구현
  // TODO: 모든 분석 결과 요약 출력 메서드 구현
  // TODO: 데이터셋별 분석 결과 출력 메서드 구현
}

void main() {
  // TODO: DataManager 인스턴스 생성 및 샘플 데이터 추가
  // TODO: Analyzer 인스턴스 생성
  // TODO: 기본 분석 함수 테스트
  // TODO: 사용자 정의 분석 함수 등록 및 테스트
  // TODO: 다양한 형식으로 결과 출력 테스트

  // 힌트: 함수를 변수에 저장할 때는 함수 이름만 사용 (괄호 없이)
  // 힌트: 사용자 정의 함수는 화살표 함수로 간단히 구현 가능
}

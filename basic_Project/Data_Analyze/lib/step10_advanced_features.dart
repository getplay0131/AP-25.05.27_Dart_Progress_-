// step10_advanced_features.dart

// 필요한 클래스 가져오기
// TODO: (필요한 경우) 이전 단계에서 만든 클래스들을 import 또는 재정의
import 'step9_error_handling.dart';
import 'step7_data_manager.dart';
import 'step8_analyzer.dart';
import 'step6_result_model.dart';

// 10-A: 데이터 시각화 준비 (나중에 Flutter에서 활용)
// DataVisualizer 클래스 정의 (Flutter 없이 텍스트 기반 시각화)
class DataVisualizer {
  final List<num> results = [1,2,3,4,5];
  final int bins = 5;

  // 히스토그램 생성 메서드
  // 히스토그램 : 히스토그램은 데이터의 분포를 시각적으로 표현하는 그래프의 일종입니다. 주로 데이터를 여러 구간(빈, bin)으로 나누고, 각 구간에 속하는 데이터의 개수를 막대의 높이로 나타냅니다. 이를 통해 데이터가 특정 구간에 얼마나 집중되어 있는지, 분포가 어떤 형태인지 쉽게 파악할 수 있습니다

  // 이 메서드는 숫자 데이터 리스트를 입력받아, 해당 데이터의 분포를 텍스트 기반으로 히스토그램 형태로 출력합니다.
  // 예를 들어, 데이터가 [1, 2, 2, 3, 3, 3, 4, 4, 5]라면, 각 숫자가 몇 번 등장했는지 막대 형태로 표현합니다

  // TODO: 데이터 분포를 텍스트 기반 히스토그램으로 표현하는 메서드 구현
  // 함수 시그니처: void printHistogram(List<num> data, [int bins = 5])
  void printHistogram(List<int> data, [int bins = 5]) {
  // 1. 데이터 유효성 검사
    // 입력받은 데이터 리스트가 비어 있는지 확인합니다.
    // 비어 있다면 적절한 메시지를 출력하고 메서드를 종료합니다

    if (data.isEmpty) {
      print("List is empty!");
          return;
    }

  //   2. 최소값과 최대값 계산
    // 데이터의 최소값과 최대값을 계산합니다.
    // 이를 통해 구간(bins)을 나누는 기준을 설정합니다.
    num minValue = data.reduce((a,b)=> a> b ? b : a);
    num maxValue = data.reduce((a,b)=> a> b ? a : b);

    // 3. 구간(bins) 크기 계산
    // - 최소값과 최대값의 차이를 구합니다.
    // - 이를 bins의 개수로 나누어 각 구간의 크기를 계산합니다.
    num binsize = (maxValue - minValue) / bins;

    // 4. 각 데이터가 속하는 구간 계산
    // - 데이터를 순회하며 각 값이 속하는 구간을 계산합니다.
    // - 구간별로 데이터 개수를 저장할 리스트를 생성합니다.


    // 5. 히스토그램 출력
    // - 구간별 데이터 개수를 기반으로 텍스트 막대를 생성합니다.
    // - 각 구간의 범위와 막대 그래프를 출력합니다.
  }

  // 간단한 그래프 출력 메서드
  // TODO: 데이터를 텍스트 기반 그래프로 표현하는 메서드 구현
  // 함수 시그니처: void printGraph(List<num> data)

  // 비교 차트 메서드
  // TODO: 두 데이터셋을 비교하는 텍스트 차트 구현
  // 함수 시그니처: void compareDatasets(List<num> data1, List<num> data2)
}

// 10-B: 데이터 저장 구조 설계
// DataStorage 클래스 정의
class DataStorage {
  // 데이터 내보내기 메서드 (문자열 형태로)
  // TODO: 데이터셋을 CSV 형식 문자열로 변환하는 메서드 구현
  // 함수 시그니처: String exportToCsv(String datasetName)

  // 데이터 가져오기 메서드 (문자열에서)
  // TODO: CSV 형식 문자열에서 데이터를 파싱하는 메서드 구현
  // 함수 시그니처: List<num> importFromCsv(String csvString)

  // 모든 데이터 내보내기
  // TODO: 모든 데이터셋을 포맷팅된 문자열로 변환하는 메서드 구현
}

// 10-C: 분석 보고서 형식 구현
// ReportGenerator 클래스 정의
class ReportGenerator {
  // 기본 보고서 생성 메서드
  // TODO: 데이터셋에 대한 기본 통계 보고서 생성 메서드 구현
  // 함수 시그니처: String generateBasicReport(String datasetName)

  // 상세 보고서 생성 메서드
  // TODO: 데이터셋에 대한 상세 분석 보고서 생성 메서드 구현
  // 함수 시그니처: String generateDetailedReport(String datasetName)

  // 비교 보고서 생성 메서드
  // TODO: 두 데이터셋을 비교하는 보고서 생성 메서드 구현
  // 함수 시그니처: String generateComparisonReport(String dataset1, String dataset2)
}

// 10-D: 최종 통합 및 테스트
// AnalyticsSystem 클래스 정의 (모든 기능 통합)
class AnalyticsSystem {
  // 필요한 구성 요소 선언
  // TODO: DataManager, Analyzer, DataVisualizer, DataStorage, ReportGenerator 인스턴스 선언

  // 생성자
  // TODO: 필요한 구성 요소 초기화

  // 통합 인터페이스 메서드
  // TODO: 데이터 관리, 분석, 시각화, 보고서 생성 등의 기능을 제공하는 메서드 구현

  // 명령 처리 메서드 (간단한 명령줄 인터페이스용)
  // TODO: 사용자 명령을 해석하고 처리하는 메서드 구현
  // 함수 시그니처: void processCommand(String command)
}

void main() {
  // TODO: AnalyticsSystem 인스턴스 생성
  // TODO: 샘플 데이터 추가
  // TODO: 다양한 기능 테스트
  // TODO: 보고서 생성 및 출력
  // TODO: 데이터 시각화 테스트

  // 사용자 인터페이스 (옵션)
  // TODO: 간단한 명령줄 인터페이스 구현 (원하는 경우)

  // 힌트: 문자열 포맷팅을 활용하여 깔끔한 출력물 만들기
  // 힌트: 복잡한 기능도 작은 단위로 나누어 구현하면 쉬워집니다
}

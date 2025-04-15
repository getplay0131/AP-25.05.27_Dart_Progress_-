// step7_data_manager.dart

import 'step6_result_model.dart';

// 먼저 6단계에서 만든 AnalysisResult 클래스를 import 또는 재정의합니다.
// AnalysisResult 클래스는 데이터 분석 결과를 저장하고 관리하기 위한 구조입니다.
// 이 파일에서는 이 클래스를 활용하여 분석 결과를 저장하고 관리합니다.

// 7-A: 데이터셋 저장 구조 설계하기
class DataManager {
  // 데이터셋을 저장할 Map 선언하기
  // Map은 키-값 쌍으로 데이터를 저장하는 컬렉션입니다.
  // 여기서 키는 데이터셋 이름(String), 값은 숫자 리스트(List<int>)입니다.
  // Map은 중괄호 `{}`를 사용하여 데이터를 저장합니다.
  // 예를 들어, "dataset1"이라는 이름으로 [1, 2, 3] 데이터를 저장할 수 있습니다.

  final Map<String, List<int>> datasets = {};

  // 분석 결과를 저장할 리스트 선언하기
  // 분석 결과는 AnalysisResult 객체로 저장됩니다.
  // List는 대괄호 `[]`를 사용하여 데이터를 저장합니다.
  // 예를 들어, 여러 AnalysisResult 객체를 리스트에 추가하여 관리할 수 있습니다.

  final List<AnalysisResult> results = [];

  // 7-B: 데이터 추가/수정 메서드 구현하기

  // 데이터셋 추가 메서드
  // 이 메서드는 데이터셋 이름(String)과 데이터를(List<int>) 받아 Map에 추가합니다.
  // Map은 키-값 쌍으로 데이터를 저장하므로, 데이터셋 이름을 키로, 데이터를 값으로 저장합니다.
  // 만약 동일한 이름의 데이터셋이 이미 존재한다면, 기존 데이터를 덮어씁니다.
  // Map에 데이터를 추가하려면 다음과 같은 방식으로 키와 값을 설정할 수 있습니다:
  // 예: map["키"] = 값;
  // 이 메서드는 새로운 데이터셋을 추가하거나 기존 데이터를 덮어쓰는 데 사용됩니다.
  // ** 노트 : Map에 데이터를 추가하는 방법을 기억하세요. 키를 사용하여 값을 설정하면 됩니다.

  // 백업
  // List.from 사용:

  // List.from을 사용하면 기존 리스트의 복사본을 생성합니다.
  // 이를 통해 원본 리스트가 변경되더라도 백업된 데이터는 영향을 받지 않습니다.
  // 백업 데이터 활용:

  // 백업된 데이터를 필요할 때 다시 datasets에 복원할 수 있습니다.
  // 예: datasets[data] = backupDatasets[data]!;

  // 백업 컬렉션의 장점:
  // 여러 데이터셋의 백업을 관리할 수 있습니다.
  // 특정 시점의 데이터를 복원하거나 비교할 때 유용합니다
  void addDataset(String data, List<int> value) {
    datasets[data] = value;
  }

  // 데이터셋 업데이트 메서드
  // 이 메서드는 기존 데이터셋에 새 데이터를 추가하거나, 기존 데이터를 덮어쓸 수 있습니다.
  // 추가 여부를 결정하는 옵션으로 옵셔널 파라미터를 사용합니다.
  // 옵셔널 파라미터는 대괄호 `[]`로 감싸서 선언하며, 기본값을 설정할 수 있습니다.
  // 예: [bool append = false]
  // append가 true이면 기존 데이터에 새 데이터를 추가하고, false이면 기존 데이터를 덮어씁니다.
  // 기존 데이터에 새 데이터를 추가하려면 리스트의 `addAll` 메서드를 사용할 수 있습니다.
  // 예: list.addAll(새로운_리스트);
  // Map에서 특정 키가 존재하는지 확인하려면 `map.containsKey(키)`를 사용할 수 있습니다.
  // 이 메서드는 데이터셋을 동적으로 업데이트하거나 확장하는 데 유용합니다.
  void updateDataset(String data, List<int> values, [bool isAdd = false]) {
    if (isAdd && datasets.containsKey(data)) {
      //키 존재하는지 확인 콘테인 사용이니까 이부분은 크게 어려울거 없다.
      datasets[data]!.addAll(values);
    } else {
      datasets[data] = values;
    }
  }

  // 7-C: Map 컬렉션 활용하기

  // 특정 데이터셋 조회 메서드
  // 이 메서드는 데이터셋 이름(String)을 받아 해당 데이터를 반환합니다.
  // Map에서 데이터를 조회하려면 키를 사용하여 값을 가져올 수 있습니다.
  // 예: map["키"];
  // 데이터셋이 존재하지 않을 경우 null을 반환하도록 처리합니다.
  // null을 반환하는 이유는, Map에서 존재하지 않는 키를 조회하면 기본적으로 null을 반환하기 때문입니다.
  // 이 메서드는 특정 데이터셋의 데이터를 확인하거나 활용할 때 사용됩니다.
  // ** Map에서 존재하지 않는 키를 조회하면 기본적으로 null을 반환
  List<int>? findDataset(String data) {
    // 존재하지 않으면 널이기 때문에 조건문이 필요가 없다.
    // if (datasets.containsKey(data)) {
    //   return datasets[data];
    // } else {
    //   return null;
    // }
    return datasets[data];
  }

  // 모든 데이터셋 이름 조회 메서드
  // 이 메서드는 저장된 모든 데이터셋의 이름(키)을 반환합니다.
  // Map의 키를 리스트로 변환하려면 `map.keys.toList()`를 사용할 수 있습니다.
  // 반환된 리스트는 데이터셋 이름들로 구성됩니다.
  // 이 메서드는 저장된 데이터셋의 전체 목록을 확인할 때 유용합니다.
  List<String> findAllDatasetName() {
    return datasets.keys.toList();
  }

  // 데이터셋 삭제 메서드
  // 이 메서드는 데이터셋 이름(String)을 받아 해당 데이터를 삭제합니다.
  // Map에서 데이터를 삭제하려면 `map.remove(키)`를 사용할 수 있습니다.
  // 삭제하려는 데이터셋이 존재하지 않을 경우 아무 작업도 수행하지 않습니다.
  // 이 메서드는 더 이상 필요하지 않은 데이터셋을 정리할 때 사용됩니다.
  void removeDataset(String name) {
    datasets.remove(name);
  }

  // 7-D: 데이터 요약 기능 구현하기

  // 모든 데이터셋 요약 정보 출력 메서드
  // 이 메서드는 저장된 모든 데이터셋의 요약 정보를 출력합니다.
  // 각 데이터셋의 이름, 데이터 개수, 첫 번째 요소, 마지막 요소 등을 출력합니다.
  // 데이터셋이 비어 있는 경우 적절한 메시지를 출력하도록 처리합니다.
  // Map의 데이터를 순회하려면 `map.forEach((키, 값) { ... })`를 사용할 수 있습니다.
  // 리스트의 첫 번째 요소를 가져오려면 `list.first`를, 마지막 요소를 가져오려면 `list.last`를 사용할 수 있습니다.
  // 데이터셋이 비어 있는 경우를 확인하려면 `list.isEmpty` 또는 `list.isNotEmpty`를 사용할 수 있습니다.
  // 이 메서드는 데이터셋의 상태를 요약하여 사용자에게 제공하는 데 유용합니다.
  // ** 특정 리스트의 처번째와 마지막 요소를 가져오려면, 리스트의 first, last를 활용하면 된다. 맵의 밸류를 가져오면 모든 값을 가져오는 것이다.
  // void printDataset(String name, List<int> value) {
  //   if (value.isNotEmpty) {
  //     datasets.forEach((key, values) {
  //       print(
  //         'key : $key, valuesLength : ${values.length}, firstElement : ${values.first} , lastElement : ${values.last}',
  //       );
  //     });
  //   }
  // }
  // ?
  // 특정 데이터 셋만 찾아야 하므로
  void printDataset(String name) {
    if (datasets.containsKey(name)) {
      List<int> values = datasets[name]!;
        print(
          'key : $name, valuesLength : ${values.length}, firstElement : ${values.first} , lastElement : ${values.last}',
        );
    } else {
      print("dataset '${name}' is not match!");
    }
  }
}

// ** 메인 메서드는 클래스 외부에 정의되어야 한다.
void main() {
  // DataManager 인스턴스 생성
  // DataManager 클래스의 인스턴스를 생성하여 데이터를 관리합니다.
  DataManager dataManager = DataManager();

  // 샘플 데이터 추가
  // 데이터셋 이름과 데이터를 전달하여 Map에 데이터를 추가합니다.
  List<int> dataValue = [1, 2, 3, 4, 5];
  List<int> dataValue2 = [10, 20, 30, 40, 50];
  dataManager.addDataset("first", dataValue);

  // 데이터셋 조회 및 출력
  // 특정 데이터셋의 데이터를 조회하고, 결과를 출력합니다.
  List<int>? findLists = dataManager.findDataset("first");
  if (findLists != null) {
    print("dataset : $findLists");
  } else {
    print("dataset is null!");
  }
  dataManager.printDataset("first");

  // 데이터셋 업데이트 테스트
  // 기존 데이터셋에 새 데이터를 추가하거나 덮어쓰는 동작을 테스트합니다.
  dataManager.updateDataset("first", dataValue2);
  dataManager.printDataset("first");

  // 데이터 요약 정보 출력
  // 저장된 모든 데이터셋의 요약 정보를 출력합니다.
  dataManager.printDataset("second");
  dataManager.findDataset("second");
  // 힌트:
  // - Map에 값을 추가하려면 `map[key] = value`를 사용합니다.
  // - Map에서 값을 조회하려면 `map[key]`를 사용합니다.
  // - Map에 특정 키가 있는지 확인하려면 `map.containsKey(key)`를 사용합니다.
  // - 리스트에 데이터를 추가하려면 `list.add(value)` 또는 `list.addAll(values)`를 사용합니다.
}

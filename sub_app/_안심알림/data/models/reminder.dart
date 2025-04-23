// reminder.dart

// 알림 정보를 저장하는 모델 클래스
// 사용자가 설정한 알림의 모든 정보를 담고 있습니다.
import 'reminder_type.dart';
import 'repeat_pattern.dart';

class Reminder {
  // 1. 필드(변수) 정의하기
  // ------------------------------
  // 필드란 클래스가 가지는 데이터를 의미합니다.
  // 다트에서는 변수를 선언할 때 타입을 먼저 쓰고 변수명을 씁니다.
  // 예: String name;  int age;  bool isActive;
  //
  // 여기서 필요한 필드들:
  // - id: 알림의 고유 식별자 (String 타입)
  // - title: 알림 제목 (String 타입)
  // - description: 알림 상세 설명 (String 타입)
  // - dateTime: 알림이 울릴 날짜와 시간 (DateTime 타입)
  // - type: 알림 유형 (ReminderType 열거형(enum) 타입)
  // - repeatPattern: 반복 패턴 (RepeatPattern 클래스 타입)
  // - isCompleted: 알림 완료 여부 (bool 타입)
  //
  // 'final' 키워드를 앞에 붙이면 한 번 값이 할당된 후 변경할 수 없는
  // 불변(immutable) 필드가 됩니다. 이는 버그 방지에 도움이 됩니다.
  // 예: final String id;
  //
  // TODO: 위 설명을 참고하여 필요한 필드들을 선언하세요.
  final String id;
   String title;
   String description;
  final DateTime dateTime;

final ReminderType type;

final RepeatPattern repeatPattern;

bool isCompleted;



  // 2. 생성자 만들기
  // ------------------------------
  // 생성자는 새로운 객체를 만들 때 호출되는 특별한 메서드입니다.
  // 기본 생성자는 클래스명과 같고, 중괄호 {} 안에 매개변수를 넣습니다.
  //
  // 다트에서 생성자를 정의하는 기본 형태:
  // ClassName({
  //   this.field1,
  //   this.field2,
  //   ...
  // });
  //
  // 'required' 키워드는 해당 매개변수가 반드시 필요하다는 의미입니다.
  // 예: required this.id
  //
  // 기본값을 설정할 수도 있습니다:
  // this.isCompleted = false
  //
  // TODO: 모든 필드를 초기화하는 생성자를 만드세요.

  Reminder({required this.id, required this.title, required this.description, required this.dateTime, required this.type,
    required this.repeatPattern,required this.isCompleted});


// 3. toString() 메서드 구현하기
  // ------------------------------
  // toString()은 객체를 문자열로 표현할 때 사용됩니다.
  // 주로 디버깅이나 로그 출력에 유용합니다.
  //
  // 메서드 오버라이드 방법:
  // @override
  // String toString() {
  //   return '원하는 형태의 문자열';
  // }
  //
  // 문자열 안에 변수 값을 넣으려면 $ 기호를 사용합니다:
  // 'Reminder: $title (날짜: $dateTime)'
  //
  // TODO: 주요 필드 정보를 포함한 toString() 메서드를 구현하세요.
  @override
  String toString() {
    return 'Reminder{id: $id, title: $title, description: $description, dateTime: $dateTime, type: $type, isCompleted: $isCompleted}';
  }

  // 4. JSON 변환 - fromJson 구현하기 (SharedPreferences 저장용)
  // ------------------------------------------------------
  // SharedPreferences는 간단한 데이터만 저장할 수 있어서
  // 복잡한 객체는 JSON 형태로 변환해야 합니다.
  // ** 노트 : SharedPreferences란?
  // 안드로이드에서 간단한 데이터를 영구적으로 저장하기 위한 맵 형태(키 : 값)의 저장소. 주로 설정값이나, 사용자 선호도, 간단한 상태 정보 등을 저장시 사용.
  // 내부적으로 XML 파일에 데이터를 저장하며, 앱이 삭제되거나 데이터가 명시적으로 지워지기 전까지 유지됩니다.
  // 주요 특징:
// 경량 데이터 저장: 문자열, 정수, 부울, 부동소수점, 문자열 집합 등 간단한 데이터 타입을 저장할 수 있습니다.
// 비동기 처리: 데이터를 저장하거나 읽는 작업이 비동기로 처리되어 UI 스레드에 영향을 주지 않습니다.
// 앱 전용: 저장된 데이터는 해당 앱에서만 접근 가능합니다


  // fromJson은 JSON 데이터(Map<String, dynamic> 형태)를 받아
  // Reminder 객체로 변환하는 특별한 생성자입니다.
  //
  // 'factory' 키워드는 이 생성자가 항상 새 객체를 만드는 것은 아니라는 의미입니다.
  // (일반 생성자와 달리 이미 존재하는 객체를 반환할 수도 있음)
  // 노트 : factory : 새 객체 가변 생성 => 이미 존재하는 객체 반환할 수도 있음


  // 기본 형태:
  // factory Reminder.fromJson(Map<String, dynamic> json) {
  //   return Reminder(
  //     id: json['id'],
  //     title: json['title'],
  //     // ... 다른 필드들도 같은 방식으로
  //   );
  // }
  //
  // 특별한 처리가 필요한 경우:
  // 1. DateTime - 문자열에서 DateTime으로 변환해야 함
  //    DateTime.parse(json['dateTime'])
  //
  // 2. enum - 문자열이나 숫자에서 enum으로 변환해야 함
  //    예시:
  //    ReminderType type;
  //    if (json['type'] == 'ReminderType.medication') {
  //      type = ReminderType.medication;
  //    } else if (...) { ... }
  //
  //    또는 더 간결하게:
  //    ReminderType.values.firstWhere(
  //      (e) => e.toString() == json['type']
  //    )
  //
  // 3. 다른 클래스 객체 - 해당 클래스의 fromJson 메서드 호출
  //    RepeatPattern.fromJson(json['repeatPattern'])
  //
  // TODO: fromJson 팩토리 생성자를 구현하세요
  // repeatPattern
  //   factory Reminder.fromJson(Map<String, dynamic> json) {
  //   return Reminder(id: json['id'],title: json['title'], description: json['description'], dateTime : DateTime.parse(json['dateTime']),type : json['reminderType'], repeatPattern: repeatPattern, isCompleted: json['isCompleted'], )
  //   }
    }

  // 5. JSON 변환 - toJson 구현하기
  // ------------------------------
  // toJson은 Reminder 객체를 JSON 형태(Map<String, dynamic>)로
  // 변환하는 메서드입니다.
  //
  // 기본 형태:
  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'title': title,
  //     // ... 다른 필드들도 같은 방식으로
  //   };
  // }
  //
  // 특별한 처리가 필요한 경우:
  // 1. DateTime - 문자열로 변환해야 함
  //    'dateTime': dateTime.toIso8601String()
  //
  // 2. enum - 문자열이나 숫자로 변환해야 함
  //    'type': type.toString()  // 'ReminderType.medication' 같은 형태
  //    또는
  //    'type': type.index  // 0, 1, 2... 같은 숫자
  //
  // 3. 다른 클래스 객체 - 해당 객체의 toJson 메서드 호출
  //    'repeatPattern': repeatPattern.toJson()
  //
  // 실제 사용 예:
  // 1. 객체를 JSON 맵으로 변환: reminder.toJson()
  // 2. JSON 맵을 문자열로 변환: jsonEncode(reminder.toJson())
  // 3. 문자열을 SharedPreferences에 저장
  //
  // TODO: toJson 메서드를 구현하세요.


  // 6. copyWith 메서드 구현하기
  // ------------------------------
  // copyWith는 기존 객체의 일부 필드만 변경한 새 객체를 만드는 메서드입니다.
  // 불변 객체라도 필요한 변경을 쉽게 할 수 있게 해줍니다.
  //
  // 기본 형태:
  // Reminder copyWith({
  //   String? id,  // nullable 타입으로 선언 (값이 없을 수도 있음)
  //   String? title,
  //   // ... 다른 필드들도 같은 방식으로
  // }) {
  //   return Reminder(
  //     id: id ?? this.id,  // 새 값이 없으면 현재 값 사용
  //     title: title ?? this.title,
  //     // ... 다른 필드들도 같은 방식으로
  //   );
  // }
  //
  // '??' 연산자는 왼쪽 값이 null이면 오른쪽 값을 사용합니다.
  // 따라서 매개변수로 전달된 값이 없으면 현재 객체의 값을 그대로 사용합니다.
  //
  // 사용 예:
  // final updatedReminder = reminder.copyWith(
  //   title: '새 제목',  // title만 변경
  //   isCompleted: true  // isCompleted도 변경
  //   // 다른 필드는 원래 값 유지
  // );
  //
  // TODO: copyWith 메서드를 구현하세요.
}
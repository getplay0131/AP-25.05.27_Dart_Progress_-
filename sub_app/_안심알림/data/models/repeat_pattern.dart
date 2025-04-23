// repeat_pattern.dart

// TODO: 반복 패턴 구현
// 이 파일은 알림이 반복되는 방식을 정의합니다.
// 예를 들어, 매일 반복, 매주 특정 요일에 반복, 매월 특정 날짜에 반복 등의 패턴을 관리합니다.

// 1. 먼저 반복 유형을 정의하는 enum 만들기
// --------------------------------------
// enum은 미리 정의된 값들의 집합입니다.
// 여기서는 알림이 반복되는 다양한 방식을 정의합니다.
//
// 다트에서 enum 정의 방법:
// enum 이름 {
//   값1,
//   값2,
//   값3,
//   ...
// }
//
// 필요한 반복 유형:
// - none: 반복 없음 (일회성 알림)
// - daily: 매일 반복
// - weekly: 매주 특정 요일에 반복
// - monthly: 매월 특정 날짜에 반복
// - custom: 사용자 정의 반복 (특별한 간격으로 반복)
//
// TODO: RepeatType enum을 정의하세요.
enum RepeatType {
  // 여기에 반복 타입 나열
  // 예: none, daily, weekly, monthly, custom
  none, daily, weekly, monthly, custom;
}


// 2. RepeatPattern 클래스 구현하기
// --------------------------------------
// 이 클래스는 알림이 어떤 패턴으로 반복될지 정의합니다.
class RepeatPattern {
  // 필드(변수) 정의
  // ------------------
  // - type: 반복 유형 (RepeatType enum 사용)
  //   이 필드는 이 패턴이 어떤 종류의 반복인지 나타냅니다.
  //
  // - interval: 반복 간격 (int 타입)
  //   예: interval이 2이고 type이 daily면 2일마다 반복
  //       interval이 3이고 type이 weekly면 3주마다 반복
  //
  // - daysOfWeek: 주간 반복 시 어떤 요일에 반복할지 (List<int> 타입)
  //   예: [1, 3, 5]는 월요일, 수요일, 금요일을 의미
  //   주의: 일반적으로 월요일=1, 화요일=2, ... 일요일=7 또는
  //         일요일=0, 월요일=1, ... 토요일=6으로 표현합니다.
  //         앱에서 일관된 방식을 선택하세요.
  //
  // - endDate: 반복 종료 날짜 (DateTime? 타입)
  //   ? 표시는 이 필드가 null일 수 있다는 의미입니다.
  //   null이면 종료 날짜 없이 계속 반복됩니다.
  //
  // 불변 객체로 만들기 위해 가능하면 모든 필드를 final로 선언하세요.
  // 예: final RepeatType type;
  //
  // TODO: 위 설명을 참고하여 필요한 필드들을 정의하세요.
  RepeatType type;
  int interval;
  List<int> daysOfWeek;

  DateTime? endDate;


  // 생성자 구현
  // ------------------
  // 새로운 RepeatPattern 객체를 만들 때 호출되는 메서드입니다.
  //
  // 기본 형태:
  // RepeatPattern({
  //   required this.type,
  //   this.interval = 1,  // 기본값 1
  //   this.daysOfWeek = const [],  // 기본값 빈 리스트
  //   this.endDate,  // 기본값 null
  // });
  //
  // 'required' 키워드는 해당 매개변수가 반드시 필요하다는 의미입니다.
  // 기본값은 매개변수가 제공되지 않을 때 사용됩니다.
  //
  // TODO: 생성자를 구현하세요.
  RepeatPattern({ required this.type, this.interval = 1, this.daysOfWeek = const [], this.endDate} );


  // 3. fromJson() 팩토리 생성자 구현
  // ------------------
  // JSON 데이터에서 RepeatPattern 객체를 생성하는 메서드입니다.
  // SharedPreferences에 저장된 데이터를 불러올 때 사용됩니다.
  //
  // 기본 형태:
  // factory RepeatPattern.fromJson(Map<String, dynamic> json) {
  //   return RepeatPattern(
  //     type: ...,  // JSON에서 타입 읽어오기
  //     interval: json['interval'],
  //     // ... 나머지 필드
  //   );
  // }
  //
  // 특별한 처리가 필요한 부분:
  //
  // 1. enum 타입 변환:
  // RepeatType 값을 문자열이나 숫자에서 변환해야 합니다.
  // 예를 들어, JSON에 "daily"라는 문자열이나 1이라는 숫자로 저장되어 있을 수 있습니다.
  //
  // 문자열 기반:
  // RepeatType type;
  // switch (json['type']) {
  //   case 'daily': type = RepeatType.daily; break;
  //   case 'weekly': type = RepeatType.weekly; break;
  //   // ... 나머지 케이스들
  //   default: type = RepeatType.none;
  // }
  //
  // 또는 더 간결하게:
  // RepeatType.values.firstWhere(
  //   (e) => e.toString() == 'RepeatType.${json['type']}'
  // )
  //
  // 2. List 변환:
  // daysOfWeek 필드는 List<int>로 변환해야 합니다.
  // json['daysOfWeek']가 List 타입이면 간단히 캐스팅할 수 있습니다:
  // List<int> daysOfWeek = List<int>.from(json['daysOfWeek']);
  //
  // 3. DateTime? 변환:
  // endDate 필드는 문자열에서 DateTime으로 변환하되, null일 수 있습니다.
  // DateTime? endDate = json['endDate'] != null
  //   ? DateTime.parse(json['endDate'])
  //   : null;
  //
  // TODO: fromJson 팩토리 생성자를 구현하세요.


  // toJson() 메서드 구현
  // ------------------
  // RepeatPattern 객체를 JSON 형태로 변환하는 메서드입니다.
  // SharedPreferences에 데이터를 저장할 때 사용됩니다.
  //
  // 기본 형태:
  // Map<String, dynamic> toJson() {
  //   return {
  //     'type': ...,  // 타입을 적절한 형태로 변환
  //     'interval': interval,
  //     'daysOfWeek': daysOfWeek,
  //     'endDate': endDate?.toIso8601String(),  // null이 아닐 때만 변환
  //   };
  // }
  //
  // 특별한 처리가 필요한 부분:
  //
  // 1. enum 타입 변환:
  // enum 값을 문자열이나 숫자로 변환해야 합니다.
  // 문자열 변환 예: 'type': type.toString().split('.').last
  // (이렇게 하면 "RepeatType.daily"에서 "daily"만 추출됩니다)
  //
  // 숫자 변환 예: 'type': type.index
  //
  // 2. DateTime? 변환:
  // null일 수 있는 DateTime을 처리해야 합니다.
  // 'endDate': endDate?.toIso8601String()
  // (?. 연산자는 endDate가 null이 아닐 때만 toIso8601String()을 호출합니다)
  //
  // TODO: toJson 메서드를 구현하세요.


  // 4. 다음 알림 시간 계산 메서드 구현
  // ------------------
  // 주어진 시간부터 이 반복 패턴에 따라 다음에 알림이 발생할 시간을 계산합니다.
  //
  // 기본 형태:
  // DateTime getNextOccurrence(DateTime from) {
  //   // 로직 구현
  //   return 다음알림시간;
  // }
  //
  // 이 메서드는 각 반복 타입별로 다른 로직이 필요합니다:
  //
  // 1. RepeatType.none:
  //    반복이 없으므로 기준 시간 자체를 반환합니다. (from 반환)
  //
  // 2. RepeatType.daily:
  //    interval 일수를 더합니다.
  //    예: interval이 2면 2일 후 같은 시간
  //    return from.add(Duration(days: interval));
  //
  // 3. RepeatType.weekly:
  //    (a) daysOfWeek가 비어있다면 interval 주 후 같은 요일
  //        return from.add(Duration(days: 7 * interval));
  //    (b) daysOfWeek가 있다면, from 이후 가장 빠른 해당 요일
  //        (요일 계산 로직 필요)
  //
  // 4. RepeatType.monthly:
  //    interval 개월 후 같은 날짜 (월별 날짜 계산 필요)
  //
  // 5. RepeatType.custom:
  //    사용자 정의 간격 (interval 일 후)
  //    return from.add(Duration(days: interval));
  //
  // 주의사항:
  // - endDate가 설정되어 있고, 계산된 다음 알림 시간이 endDate를 넘어가면
  //   null을 반환하거나 예외 처리를 해야 합니다.
  // - 날짜/시간 계산은 복잡할 수 있으니 점진적으로 구현하세요.
  //
  // TODO: getNextOccurrence 메서드를 구현하세요.
}
// reminder_type.dart
// 이 파일은 앱에서 사용할 알림 유형을 정의합니다.

// 다트 기초: enum 정의하기
// enum은 간단히 말해서 '미리 정해진 값들의 목록'입니다.
// 예를 들어 요일을 enum으로 정의하면: enum Weekday { monday, tuesday, wednesday, ... }
// 앱에서는 다음과 같이 enum을 선언합니다:
//
// enum ReminderType {
//   medication,     // 약물 복용 알림
//   doctorAppointment,  // 병원 예약 알림
//   exercise,       // 운동 알림
//   waterIntake,    // 물 마시기 알림
//   other           // 기타 알림
// }
//
// TODO: 위 주석을 참고하여 ReminderType enum을 정의해보세요.
enum ReminderType {
  medication, // 약물 복용 알림
  doctorAppointment, //병원 예약 알림
  exercise, // 운동 알림
  waterIntake, // 물 마시기 알림
  other, // 기타 알림
}

// 다트 기초: enum 사용하기
// enum은 다음과 같이 사용할 수 있습니다:
// ReminderType type = ReminderType.medication;
//
ReminderType test = ReminderType.medication;

// switch 문과 함께 사용할 수도 있습니다:
// switch (type) {
//   case ReminderType.medication:
//     print('약 복용 알림입니다.');
//     break;
//   case ReminderType.doctorAppointment:
//     print('병원 예약 알림입니다.');
//     break;
//   // ... 나머지 case들
// }

// 다트 기초: enum 확장하기
// 기본적으로 enum은 값 목록만 가질 수 있습니다.
// 하지만 extension을 사용하면 enum에 추가 기능을 부여할 수 있습니다.
//
// extension 기본 구조:
// extension [확장명] on [확장할 타입] {
//   // 추가할 속성이나 메서드들
// }
//
// 예시:
// extension ReminderTypeExtension on ReminderType {
//   String get displayName {
//     // 여기에 코드 작성
//   }
// }
//
// TODO: ReminderType에 대한 extension을 만들고, displayName getter를 추가해보세요.
// **getter는 일반적으로 값을 반환하는 역할만 한다!
// displayName은 각 알림 유형의 한글 이름을 반환해야 합니다.
// (예: ReminderType.medication -> '약 복용')
extension ReminderTypeExtension on ReminderType {
  String get displayName {
    switch (this) {
      case ReminderType.medication:
        return "약 복용 시간 알림";
      case ReminderType.doctorAppointment:
        return "의사와의 진료 예정 시간 알림";
      case ReminderType.exercise:
        return "운동 예정 시간을 알림";
      case ReminderType.waterIntake:
        return "물 섭취 시간을 알림";
      default:
        return "기타 알림";
    }
  }

  // 심화: 더 많은 속성 추가하기
  // TODO (선택적): 시간이 되면 아래 속성들을 추가로 구현해보세요.
  String get description {
    switch (this) {
      case ReminderType.medication:
        return " 이 알림은 약 복용 시간을 알려주는데 사용합니다.";
      case ReminderType.doctorAppointment:
        return " 이 알림은 의사와의 진료 시간을 알려주는데 사용합니다.";
      case ReminderType.exercise:
        return " 이 알림은 운동 시간을 알려주는데 사용합니다.";
      case ReminderType.waterIntake:
        return " 이 알림은 물 섭취 시간을 알려주는데 사용합니다.";
      default:
        return " 이 알림은 기타 알림용으로 사용합니다.";
    }
  }

  }


// - description: 각 알림 유형에 대한 짧은 설명
//

void main(List<String> args) {
  ReminderType type = ReminderType.doctorAppointment;
  print(type.displayName);
  print(type.description);
}

// 참고: 아이콘과 색상은 Flutter 패키지가 필요하므로 나중에 추가하겠습니다.

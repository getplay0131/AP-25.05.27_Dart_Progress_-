// TODO: 알림 카드 위젯 구현
// 1. ReminderCard 위젯 정의 (StatelessWidget 상속)
// 2. 필요한 속성:
//    - reminder: 표시할 알림 객체
//    - onTap: 탭 시 콜백
//    - onCompletionToggle: 완료 체크 토글 콜백
// 3. UI 구현:
//    - 알림 유형에 따른 아이콘과 색상
//    - 제목과 설명 표시
//    - 날짜와 시간 정보
//    - 완료 체크 토글 버튼
//    - 반복 패턴 표시

import 'package:flutter/material.dart';
import '../../models/reminder.dart';
import '../styles/colors.dart';
import 'common/senior_friendly_text.dart';

class ReminderCard extends StatelessWidget {
  // 필요한 속성 정의

  // 생성자

  @override
  Widget build(BuildContext context) {
    // 카드 구현
    // 힌트: Card 위젯과 ListTile 또는 Row/Column 조합 활용
  }
}

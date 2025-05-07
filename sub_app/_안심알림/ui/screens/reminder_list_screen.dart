// TODO: 알림 목록 화면 구현
// 1. ReminderListScreen 위젯 정의 (StatefulWidget 상속)
// 2. UI 구현:
//    - 알림 목록 표시 (ListView.builder 활용)
//    - 카테고리별 필터 탭
//    - 완료/미완료 필터 옵션
//    - 알림 추가 플로팅 버튼
// 3. 기능 구현:
//    - 알림 로드 및 필터링
//    - 스와이프로 완료 체크
//    - 롱 프레스로 작업 메뉴 표시

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/providers/reminder_provider.dart';
import '../../models/reminder.dart';
import '../../models/reminder_type.dart';
import '../widgets/reminder/reminder_card.dart';

class ReminderListScreen extends StatefulWidget {
  @override
  _ReminderListScreenState createState() => _ReminderListScreenState();
}

class _ReminderListScreenState extends State<ReminderListScreen> {
  // 상태 변수 정의 (필터 등)

  @override
  void initState() {
    super.initState();
    // 데이터 로드
  }

  @override
  Widget build(BuildContext context) {
    // 알림 목록 화면 구현
    // 힌트: Scaffold와 ListView.builder 활용
  }
}

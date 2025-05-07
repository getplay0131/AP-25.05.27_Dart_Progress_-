// TODO: 고령자 친화적 버튼 구현
// 1. SeniorFriendlyButton 위젯 정의 (StatelessWidget 상속)
// 2. 필요한 속성:
//    - text: 버튼 텍스트
//    - icon: 선택적 아이콘
//    - onPressed: 콜백 함수
//    - expanded: 너비 확장 여부
//    - size: 버튼 크기 (enum)
// 3. 고령자 친화적 디자인 적용:
//    - 충분히 큰 터치 영역 (최소 48x48px)
//    - 높은 대비의 색상
//    - 명확한 시각적 피드백
//    - 읽기 쉬운 텍스트 크기

import 'package:flutter/material.dart';
import '../../styles/colors.dart';
import '../../styles/text_styles.dart';

enum ButtonSize { small, medium, large }

class SeniorFriendlyButton extends StatelessWidget {
  // 필요한 속성 정의

  // 생성자

  @override
  Widget build(BuildContext context) {
    // 버튼 구현
    // 힌트: ElevatedButton 또는 Material 위젯 활용
  }
}

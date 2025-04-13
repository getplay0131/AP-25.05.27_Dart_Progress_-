// TODO: 고령자 친화적 텍스트 구현
// 1. SeniorFriendlyText 위젯 정의 (StatelessWidget 상속)
// 2. 필요한 속성:
//    - text: 표시할 텍스트
//    - style: 텍스트 스타일 (TextType enum으로 정의)
//    - color: 선택적 색상
//    - align: 텍스트 정렬
// 3. 접근성 고려:
//    - 충분히 큰 기본 글꼴 크기
//    - 높은 대비
//    - semantics 적용

import 'package:flutter/material.dart';
import '../styles/text_styles.dart';

enum TextType { title, subtitle, body, label }

class SeniorFriendlyText extends StatelessWidget {
  // 필요한 속성 정의

  // 생성자

  @override
  Widget build(BuildContext context) {
    // 텍스트 구현
    // 힌트: Text 위젯과 TextStyle 활용
  }
}

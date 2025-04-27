void main() {
  // nullable vs non-nullable
  // 널 가능
  String? name3 = '하이';
  print(name3);

  name3 = null;
  print(name3);

  // 널이 아닌 값으로 변경
  name3 = '헬로우!';
  print(name3);

  // 널 불가
  name3 = name3!;

  // 널 가능으로 변경
  String? name4 = name3;
  name4 = '확인!';
  print(name4);
}

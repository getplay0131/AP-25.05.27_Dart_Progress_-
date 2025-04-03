void main(){
  //Set : 중복이 불가한 리스트
  Set<String> names = {
    '강한나',
    '박보영',
    '츄',
    '아이유',
    '강한나'
  };
  print(names);
  names.add('전소민');
  print(names);
  names.add('강한나');
  print(names);
}
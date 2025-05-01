main() {
  List<Map<String,String>> people = [
    {"name" : "철수","거주지" : "서울"},
    {"name" : "영희","거주지" : "경기도"},
    {"name" : "바둑","거주지" : "서울"},
    {"name" : "짱구","거주지" : "서울"},
  ];

  print(people);
  final where = people.where((r)=> r["거주지"] == "서울").toList();
print(where);

}
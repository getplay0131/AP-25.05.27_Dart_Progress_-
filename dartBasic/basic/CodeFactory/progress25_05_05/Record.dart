main() {
final result = nameAndAge({"name" : "민지","age" : 20});
print(result);
print(result);

final result2 = getMember();
for (var member in result2) {
  //
  print(member.$1);
  print(member.$2);
  }

final result3 = getMember2();
for (var member in result3) {
  //
  print(member.name);
  }
}

(String,int) nameAndAge(Map<String, dynamic> json){
  return (json["name"] as String,json["age"] as int);
}

List<(String,int)> getMember(){
  return[("하니",20),("하이",25)];
}

List<({String name, int age})> getMember2(){
  return[(name: "하니",age: 20),(name: "하이", age: 25)];
}
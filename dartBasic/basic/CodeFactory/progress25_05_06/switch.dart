// validation
main() {
final haha = ("하하",20);
final (name as String,age as int) = haha;

print(name);
print(age);

// switcher("aaa");
// switcher("aab");
// switcher(["1","2"]);
// switcher([1,2]);
// switcher([1,2,3]);
// switcher(["a","b","c"]);
// switcher([6,9]);
// switcher([6,"9"]);
switcher(6);
print(switcher2(5, true));
print(switcher2(7,true));
print(switcher2(7,false));
forLooper();
ifMatcher();
}

void switcher(dynamic anything){
  switch(anything){
    case "aaa":
      print("match : aaa");
    case ["1","2"]:
      print("match : [1,2]");
    case[_,_,_]:
      print("match : [_,_,_]");
    case[int a,int b]:
      print("match : [int $a , int $b]");
    case  > 5 &&  < 10 :
      print("match : < 10 && > 5");
    default :
      print("no match!");
  }

}

String switcher2(dynamic val, bool condition)=>switch(val){
  5 => "match : 5",
  7 when condition => "match : 7 and true",
  _=> "no match",
};

void forLooper(){
  final List<Map<String, dynamic>> members = [
 {"name" : "이광수", "nickName" : "꺽다리" }
  ];

  for (final member in members) {
    print(member["name"]);
    print(member["nickName"]);
  }

  print("----------------");

  for (var {"name" : name, "nickName" : temp} in members) {
    print(name);
    print(temp);
  }
}
void ifMatcher(){
  print("-----------------");
  final member1 = {
    "name" : "유재석", "age" : 50
  };
  if (member1 case {"name" : String name, "age" : int age}) {
    print(name);
    print(age);
  }
}
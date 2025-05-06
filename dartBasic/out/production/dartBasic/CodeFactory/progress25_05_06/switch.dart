// validation
main() {
final haha = ("하하",20);
final (name as String,age as int) = haha;

print(name);
print(age);

switcher("aaa");
switcher("aab");
switcher(["1","2"]);
switcher([1,2]);
switcher([1,2,3]);
switcher(["a","b","c"]);
switcher([6,9]);

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
    default :
      print("no match!");
  }
}
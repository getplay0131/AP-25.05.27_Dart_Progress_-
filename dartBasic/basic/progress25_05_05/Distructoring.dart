main() {
  final name1 = ("철수",20);

  print(name1.$1);
  print(name1.$2);

  final (name,age) =("영희",25);
  print("name : $name , age : $age");

  final [x,y,...,z] = [1,2,3,4,5,6];
  print(x);
  print(y);
  print(z);

  final f1Map = {"team" : "redBull", "driver" : "max"};

  final {"team" : names, "driver" : drivers} = f1Map;
  print(names);
  print(drivers);
}
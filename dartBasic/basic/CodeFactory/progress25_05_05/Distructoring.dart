main() {
  final name1 = ("철수",20);

  print(name1.$1);
  print(name1.$2);

  final (name,age) =("영희",25);
  print("name : $name , age : $age");

  final [x,y,...temp,z] = [1,2,3,4,5,6];
  print(x);
  print(y);
  print(z);
  print(temp);

  final f1Map = {"team" : "redBull", "driver" : "max"};

  final {"team" : names, "driver" : drivers} = f1Map;
  print(names);
  print(f1Map["team"]);
  print(drivers);

  final tests = Driver(teamName : "maclaren", drivers : "norris");
print(tests.teamName);

// final Driver(teamName: team1, drivers : drivers1 ) = tests;
final Driver(teamName: team1, drivers : drivers1 ) = Driver(teamName: "ab",
    drivers: "aaa");

print(team1);
}

class Driver{
  final String teamName;
  final String drivers;

  Driver({required this.teamName,required this.drivers});
}
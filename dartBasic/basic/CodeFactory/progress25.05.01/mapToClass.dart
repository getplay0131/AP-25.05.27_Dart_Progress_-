main() {
  List<Map<String,String>> people = [
    {"name" : "철수","거주지" : "서울"},
    {"name" : "영희","거주지" : "경기도"},
    {"name" : "바둑","거주지" : "서울"},
    {"name" : "짱구","거주지" : "서울"},
  ];
print(people);

final parsedPeople = people.map((r) => Person(name : r["name"]!, address: r["거주지"]!),
).toList();

print(parsedPeople);

for(Person persons in parsedPeople){
  print("----------------");
  print(persons.name);
  print(persons.address);
}
final seoul = parsedPeople.where((r) => r.address == "서울").toList();
print(seoul);
final result = people.map((x)=> Person(name: x["name"]!, address: x["거주지"]!),).where((x)=> x.address == "서울").fold<int>(0,(prev,next) =>  prev + next.address.length);

print(result);
}

class Person{
  final String name;
  final String address;

  Person({required this.name, required this.address});

  @override
  String toString() {
    return "Person(name : $name , address : $address)";
  }
}


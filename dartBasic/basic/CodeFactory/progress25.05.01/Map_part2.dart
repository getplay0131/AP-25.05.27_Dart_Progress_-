main() {
  Map<String,String> f1 = {
    "redbull" : "max",
    "mercedes" : "russell",
    "maclaren" : "norris"
  };
   final result = f1.map((k,v)=> MapEntry("TeamName : $k ", "DriverName : $v "));
  final list = f1.keys.map((k)=> "$k racing").toList();
print(result);
print(list);
  
}
main() {
  Map<String,String> f1 = {
    "redbull" : "max",
    "mercedes" : "russell",
    "maclaren" : "norris"
  };
   final result = f1.map((k,v)=> MapEntry("TeamName : $k ", "DriverName : $v "));

print(result);
  
  
}
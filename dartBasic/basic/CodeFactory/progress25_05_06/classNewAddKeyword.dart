main() {

}

sealed class Person{
  // final String name;
  // final int age;
  //
  // Person({required this.name,required this.age});
}

class Idol extends Person{}
class Engineer extends Person{}
class Chef extends Person{}

String whoIsHe(Person person)=>switch(person){
  Idol i => "아이돌!",
  Engineer e => "엔지니어!",
// _ => "기타!"
}

//mixin
mixin class AnimalMixIn{
  String bark(){
    return "멍멍";
  }
}

class Dog with AnimalMixIn{}


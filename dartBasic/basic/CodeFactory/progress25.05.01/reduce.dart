main() {
  List<int> nums = [1,3,5,7,9];
  
  final reduce = nums.reduce((a,b){
    print("------------------");
    print("a : $a , b : $b");
    print("total : ${a+b}");
    return a+b;
  });

print(reduce);

List<String> words = ["안녕하세요"," 좋은 ","날씨입니다."];
  final reduce2 = words.reduce((a,b)=> (a+b));

print(reduce2.length.toString());

}
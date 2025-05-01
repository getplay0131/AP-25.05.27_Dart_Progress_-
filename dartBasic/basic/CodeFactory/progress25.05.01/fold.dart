main() {
  List<int> nums = [1,3,5,7,9];
  
final fold = nums.fold<int>(0, (prev,next)=> prev + next);
final fold2 = nums.fold<int>(0, (prev,next)
  {
    print("---------------");
    print("prev : $prev , next : $next");
    print("total : ${prev + next}");
    return prev + next;
  });

List<String> words = ["hello ", "world"];

final count = words.fold<int>(0,(prev,next)=> prev + next.length); // 카운트 2에 비해 성능이나 전하고자 하는 의도가 명확하며, 가독성도 좋으므로 인트의 반환이 필요할때는 이코드처럼 작성해야함
final count2 = words.fold<String>("",(prev,next)=> prev + next);


print("fold : $fold");
print("fold2 : $fold2");
print("count : $count");
print("count2 : ${count2.length}");

}
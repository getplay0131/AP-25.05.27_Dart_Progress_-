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


print(fold);
print(fold2);
}
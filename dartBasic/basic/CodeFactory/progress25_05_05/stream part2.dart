import "dart:async";

main() {
// calculate(2).listen((value){
//   print("-----");
//   print("calculate(2) : $value");
// });
// calculate(3).listen((value){
//   print("-----");
//   print("calculate("
//       "3) : $value");
// });
playAllStream().listen((val){
  print("val : $val");
});
}

Stream<int> playAllStream() async*{
  yield* calculate(1);
  yield* calculate(1000);
}
Stream<int> calculate(int num) async*{
  for(int i = 1; i < 6 ; i++){
    yield i * num;

    await Future.delayed(Duration(seconds: 2));
  }
  

}


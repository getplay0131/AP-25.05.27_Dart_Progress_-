main() {
  // 1. 다음 정보를 담는 리스트, 셋, 맵을 만드세요:
// - fruits: 사과, 바나나, 딸기, 포도, 사과 (리스트)
List<String> fruits = ["사과","바나나","딸기","포도","사과"];
// - uniqueFruits: fruits에서 중복을 제거한 셋
Set<String> uniqueFruits = fruits.toSet();
// - fruitPrices: 과일 가격 정보를 담은 맵 (사과: 2000, 바나나: 3000, 딸기: 4500, 포도: 5000)
List<int> fruitsPriceList = [2000,3000,4500,5000];
uniqueFruits.toList().asMap();
// 타입 추론 오류 발생
Map<String,int> fruitPrices = Map.fromIterables(uniqueFruits.toList(),
    fruitsPriceList);

print(fruitPrices);
// 2. fruits 리스트에 '키위'와 '오렌지'를 추가하세요
fruits.add("키위");
fruits.add("오렌지");
print(fruits);

// 3. uniqueFruits 셋에 '멜론'을 추가하세요
uniqueFruits.add("멜론");
print(uniqueFruits);

// 4. fruitPrices 맵에 '키위': 3500을 추가하세요
fruitPrices["키위"] = 3500;
print(fruitPrices);

// 5. 다음 작업을 수행하세요:
// - fruits 리스트에서 forEach를 사용해 모든 과일 이름 출력
  fruits.forEach((f)=>print("과일 : $f"));
// - uniqueFruits 셋의 크기(길이) 출력
print("uniqueFruits.length : ${uniqueFruits.length}");
// - fruitPrices 맵에서 가격이 3000원 이상인 과일만 출력 (힌트: where 메서드 활용)
fruitPrices.entries.where((e)=>e.value>=3000).forEach((e)=>print("가격이 3000원 "
    "이상인 과일 : ${e.key}"));
}
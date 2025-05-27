//과제 1: Records와 패턴 매칭
// 1. 다음 정보를 담는 Record 타입을 정의하고 값을 할당하세요:
// - 영화 정보: (제목, 감독, 개봉년도, 평점)
// 3. 다음과 같은 함수를 작성하세요:
// - getMovieInfo(): 영화 제목을 받아 해당 영화의 정보를 Record로 반환
//   (최소 3개 이상의 영화 정보를 포함)
Map<String,(String,int,double)> getMovieInfoMap(){
  Map<String,(String,int,double)> movieInfo = {
    "괴물" : ("봉준호",2006,4.2),
    "기생충" : ("봉준호",2019,4.6),
    "명량" : ("김한민",2014,4.3)
  };
  return movieInfo;
}
// 2. 위에서 만든 Record에서 destructuring을 사용하여 각 필드를 변수로 추출하세요
main() {
var movie1 = getMovieInfoMap();
var movie1Record = movie1["괴물"];
var movie2 = getMovieInfoMap();
var movie2Record = movie2["기생충"];

var movie3 = getMovieInfoMap();
var movie3Record = movie3["명량"];


final (director1,year1,score1) = movie1Record!;
final (director2,year2,score2) = movie2Record!;
final (director3,year3,score3) = movie3Record!;

conditionScore(movie1, "괴물");

}

// 4. switch 표현식과 패턴 매칭을 사용하여 영화 평점에 따라 다른 메시지를 출력하는 함수를 작성하세요
// - 4.5 이상: "최고의 영화!"
// - 4.0 이상 4.5 미만: "매우 좋은 영화!"
// - 3.5 이상 4.0 미만: "괜찮은 영화"
// - 3.5 미만: "평범한 영화"
void conditionScore(Map<String,(String,int,double)> map, String title){
  if (title != null) {
  final movieRecord = map[title];
  final ( director, year,targetScore) = movieRecord!;
  String? context= null;

  switch(targetScore){
    case >= 4.5 : context = "최고의 영화!";
    case >=4.0 && <4.5 : context = "매우 좋은 영화!";
    case >= 3.5 && < 4.0 : context = "괜찮은 영화!";
    default : context = "평범한 영화";
  }
  print("${director}님의 영화 ${title}는 ${year}년도에 개봉했으며, 이 영화는 ${context}");
  }  else {
    return;
  }
}

// 5. if-case 패턴 매칭을 사용하여 특정 감독의 영화만 출력하는 코드를 작성하세요

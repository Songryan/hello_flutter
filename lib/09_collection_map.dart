void main()
{
  // Map : key, value로 이루어진 데이터

  // 방법1 : JSON형태로 Map 생성
  var map1 =
  {
    'key1' : "홍길동",
    'key2' : 2,
    'key3' : true
  };
  print(map1);

  Map<String,int> map2 = Map();
  map2['홍길동'] = 20;
  map2['전우치'] = 25;
  map2['손오공'] = 30;
  print(map2);

  map2['멀린'] = 35;        //추가
  map2['홍길동'] = 21;      //수정
  print(map2);

  map2.remove('홍길동');
  print(map2);

  // *** 값 빠르게 찾아오는 것이 목적 ***
  int? val1 = map2['홍길동'];    // 찾는 값이 없으면 null 반환
  print(val1);
  int val2 = map2['홍길동'] ?? -1;   // 삼항연산자를 통한 null처리
  print(val2);

  var val3 = map2['홍길동'];   // var인 경우 null safefy 처리를 안해도 됨
      // null값이긴 하나 map의 타입 매개변수가 int이므로 int로 고정됨.
  print(val3);  // null출력됨.
  //val3 = "1";     // 에러발생
  val3 = 1; // int형 자료는 정상적으로 할당됨.
  print(val3);

  // 해당 map가 해당 key 값을 가지고 있는지 점검
  var bCheck = map2.containsKey('멀린');
  if(bCheck) print("멀린은 존재하는 값입니다.");

  // 반복1 : Map의 key를 먼저 얻어온 후 갯수만큼 반복해서 출력
  print("===========================");
  for(var key in map2.keys)
    {
      print('$key : ${map2[key]}');
    }
  // 반복2 : 요소 자체를 얻어온 후 각각 key, value를 출력
  print("===========================");
  for(var e in map2.entries)
    {
      print('${e.key} : ${e.value}');
    }
  print("===========================");

  // 스프레드 연산자 (...)
  var map3 =
      {
        ...map1,
        'key4' : '전우치'
      };
  print(map3);
}
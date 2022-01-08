// 메서드에 반환타입 형태로 Future객체 사용
Future<int> myRequest1(num){
  return Future(() {
    int rNum = 0;
    //전달된 인수만큼 반복하므로 시간이 걸리는 작업이라 가정
    for(int i=0; i<=num; i++)
    {
      rNum = rNum + i;
    }
    return rNum;
  });
}

void main(){
  print("main시작01");
  //메서드 호출 후 Future<int> 객체를 반환받는다.
  var myReq1 = myRequest1(999999);
  /*
    호출 성공시 then절에서 콜백데이터를 받게되고,
    실패시 onError절이 실행된다. JS의 Promise와 동작방식이 유사.
  */
  myReq1.then((data) {
    //결과가 도착하면 나중에 출력한다.
    print('main 작업 01 : $data');
  }, onError: (e) {
    // 요청 실패일때 에러메시지 출력.
    print(e);
  });
  print("main 끝 01");
  print("=================================");



  print("main 시작 02");
  // 호출과 동시에 then절 사용.
  myRequest1(1000).then((data) {
    print('main 작업 02 : $data');
  }, onError: (e){
    print(e);
  });

  print("main 끝 02");
  print("=================================");

  //내부클레스에서 사용할 변수
  int nCount = 10;
  //내부클래스로 정의
  Future<int> myRequest2 = Future(() {
    int rNum = 0;
    for(int i=0; i <= nCount; i++){
      rNum = rNum + i;
    }
    return rNum;
  });

  //Future객체를 통해 즉시 실행.
  print("myRequest2 시작 03");
  myRequest2.then((data){
    print('myRquest2 작업03 : $data');
  }, onError: (e){
    print(e);
  });

  print("myRequest2 끝 03");
  print("=================================");
}
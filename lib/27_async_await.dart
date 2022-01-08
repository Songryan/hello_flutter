import 'dart:io';

Future<void> myRequest1() async
{
  print("myRequest1() 작업시작");
  for(int i=0; i<10; i++){
    stdout.write('$i ');
    //1초씩 딜레이 시켜준다. (10초가 소요되는 굉장히 긴 작업)
    await Future.delayed(Duration(seconds: 1));
  }
  print('\nmyRequest1() 작업끝');
}

Future<int> myRequest2(num)
{
  var req = Future((){
    print('myRequest2(num) 작업시작');
    int rNum = 0;
    for(int i=0; i<num; i++){
      rNum += 1;
    }
    print('myRqeust2(num) 작업끝');
    return rNum;
  });
  //결과가 생성되기 전에 리턴하는 것이므로 잘못된 사용법.
  return req;
}

Future<int> myRequest3(num)
{
  return Future((){
    print('myRequest3(num) 작업시작');
    int rNum = 0;
    for(int i=0; i<num; i++){
      rNum += 1;
    }
    print('myReqeust3(num) 작업끝');
    return rNum;
  });
}

//비동기를 위한 async와 await는 받드시 같이 사용되어야 한다.
void main() async //여기서 async를 제거하면 에러발생
{
  print('main 시작 01');
  myRequest1();
  print('main 끝 01');

  print('main 시작 02');

  var val2 = await myRequest2(10);
  /*
    Future와 then절을 사용하거나    (방법1)
    async와 await를 사용해야 한다.  (방법2)
  */
  var val3 = await myRequest3(20);  //await 제거 후 밑에 주석을 빼보자
  // val3.then((value) {
  //   print('then절에서 출력 $value');
  // },onError: (error){
  //   print(error);
  // });

  print('val2 : $val2');
  print('val3 : $val3');
  print('main 끝 02');
}







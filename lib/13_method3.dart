void main()
{
  //메서드도 변수에 대입(참조값)이 가능
  var myFunc = addTwoNum;

  //변수를 이용하여 메서드 호출 : 메서드명의 리네임 같다.
  myFunc(1,2);

  //메서드 파라미터에 메서드를 사용
  something("1","2",myFunc);
}

void addTwoNum(int a, int b){
  print(a+b);
}

void something(var a, var b, var c){
  int var1 = int.parse(a);
  int var2 = int.parse(b);

  // c는 메서드이므로...
  c(var1, var2);
}
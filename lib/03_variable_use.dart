void main()
{
  int num1 = 1;
  double num2 = 2.1;
  String name = "홍길동";

  myFunction1(num1);            // 가능
  //myFunction1(num2);          // 에러

  // num타임은 int, double의 부모타입이므로 가능
  myFunction2(num1);            // 가능 : num은 int, double의 supertype
  myFunction2(num2);            // 가능

  // dynamic 타입은 Object와 같이 모든 타입으로 설정 가능
  myFunction1(num1);            // 가능 : dynamic은 자바에서의 Object 같은...
  myFunction2(num2);            // 가능
  myFunction3(name);            // 가능

  //int valtypecheck = myFunction3(num2);
  //print('test 1 :  $valtypecheck');

}

myFunction1(int val)
{
  print("func1 : $val");
}

myFunction2(num val)
{
  print("func2 : $val");
}

myFunction3(dynamic val)
{
  print("func3 : $val");
  //return val;
}
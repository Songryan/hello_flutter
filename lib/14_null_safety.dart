void main()
{
  // *** Nullable & Non-Nullable ***
  int num1 = 5;
  int? num2 = 2;

  // num1 = null; // 에러발생 : Non-Nullable
  num2 = null;    // ok : Nullable

  // String str1 = null;    // error : Non-Nullable
  String? str2 = null;      // ok : Nullable

  print("1=======================================================");

  // *** Null Safety 규칙 ***

  // Non-Nullable 변수는 값 대입 없이 사용할 때 error
  // int a1; print(a1)l
  int? a2; print(a2);

  // a2 변수는 Nullable. 선언과 동시에 초기값이 null이 대입되어 초기화 된다.
  // a2는 Non-Nullable. null로 자동 초기화 할 수 없다.

  // var 타입에서의 Null Safet
  var a3 = 10;    //int타입으로 유추. Non-Nullable변수임으로 null 대입 불가
  var a4 = null;  //dynamic으로 유추
  var a5;         //dynamic으로 유추
  // var? a6 = null; //error

  print("2=======================================================");

  // *** Null Safety Operator ***

  int num3 = 5;
  int? num4;

  // ! : null check operator = runtime error throw
  // 변수 뒤에 ! 을 추가하면 이 변수 값이 null 인 경우 runtime error 발생

  num4 = 10;
  num3 = num4;
  num3 = num4!;

  // ?. ?[] ?.. - null aware operator
  // String name;   // <--값이 대입되지 않고 사용되면 null일 수 있다.
  String? name;

  //Null이 아닐 때 메서드 실행
  name = name?.toLowerCase();

  //Null일 때
  int val2 = int.tryParse('n42') ?? -1;
  print('var2 = $val2');

}
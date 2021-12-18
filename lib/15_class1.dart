class Unit
{
  // ? 로 널 가능으로 처리할 수도 있지만
  // 나중에 초기화된다는 것을 명시해 줌
  late String name;
  late int age;

  Unit (String name, int age)
  {
    this.name = name;
    this.age = age;
  }
}

class TestCase
{
  String? gg;
  int? aa;

  TestCase (String gg, int aa)
  {
    this.gg = gg;
    this.aa = aa;
  }
}

void main()
{
  // 디폴트 생성자가 없어서 에러 발생
  // var unit1 = new Unit();

  // 자바와 같은 방식
  var unit2 = new Unit("마린",20);

  // 보통은 new가 옵션이라 생략
  var unit3 = Unit("메딕",25);

  //객체 타입으로 변수 생성
  Unit unit4 = Unit("파이어뱃",30);
}
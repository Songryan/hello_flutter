// 추상클래스를 인터페이스 처럼 사용한다.
abstract class Unit{
  move();
}

//extends와 implements는 동일하다.
class Marine extends Unit{
  //기능의 완성
  move() { print("마린 이동"); }
}

//extends나 implements나 동일
class Medic implements Unit {
  //기능의 완성
  move() { print("메딕 이동"); }
}

void main()
{
  var unit1 = Marine();
  unit1.move();

  var unit2 = Medic();
  unit2.move();
}
import '20_class4_get_set2.dart';

void main()
{
  var unit1 = Unit();

  // unit._age = 30;  // private 변수라 접근 안됨
  // unit.age(30);    // 자바의 메서드 호출 방식 X
  unit1.age = 30;     // 변수에 접근하듯이 사용. 여기에선 의미상 setter
  print(unit1.age);   // 여기에선 의미상 getter

  // 그냥 변수명을 사용하는 것과 똑같지만
  // 메서드이므로 값의 변경이 가능하다.

  // 스프레드 연산자를 통해 연속해서 메서드 호출하기
  var unit2 = Unit()
  ..setName('메딕')
  ..setAge(150);

  // Java처럼 사용할 수 있음.
  var unit3 = Unit();
  unit3.setAge(10);
  unit3.setName('파이어벳');
}
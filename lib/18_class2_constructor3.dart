class Marine
{
  final int health;
  final int attack;

  // 상수 생성자 : with final 변수
  const Marine(this.health, this.attack);
}

void main()
{
  Marine unit1 = Marine(10, 1);
  Marine unit2 = Marine(10, 1);
  Marine unit3 = const Marine(10, 1);
  Marine unit4 = const Marine(10, 1);
  Marine unit5 = new Marine(10, 1);
  Marine unit6 = new Marine(10, 1);

  /*
    identical() : 두 객체가 같으면 true를 반환한다.

  */
  print( identical(unit1, unit2) ); //false
  print( identical(unit1, unit3) ); //false
  print("=======================");

  print( identical(unit1, unit3) ); //false
  //하나의 객체를 여러번 사용하고 싶다면 const생성자를 사용한다.
  print( identical(unit3, unit4) ); //true
  print("=======================");

  print( identical(unit1, unit5) ); //false
  print( identical(unit3, unit5) ); //false
  print( identical(unit5, unit6) ); //false
}


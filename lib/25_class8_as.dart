class Unit{
  var health = 10;
}

class Marine extends Unit{
  var name = '마린';
}

class Medic extends Unit {
  var name = '메딕';
}

void main(){
  Marine marine = Marine();
  Medic medic = Medic();

  //as는 다른 타입으로 변환은 되지 않고 상위 타입으로만 변환할 수 있다.
  Unit unit1 = marine as Unit;  //객체의 현변환을 위해 as를 사용한다.
  Unit unit2 = medic as Unit;   // 현재 버전에서는 as 없이도 형변환 가능함.

  //왜 에러?
  //print(unit1.name);

  //is는 특정타입이 맞으면 true를 반환한다.
  if(unit1 is Marine){
    print('마린입니다.');
    /*
      자바에서는 부모타입의 참조변수로 자식똑 변수에 접근할 수 없다.
      다트에서는 가능하다. 마치 변수까지 오바라이딩이 되는 듯한
      느낌이라 생각하면 된다.
    */
    print(unit1.name);  //자바와는 다름. 자바는 이렇게 참조가 안됨.
  }else{
    print('마린이 아닙니다.');
  }

  if(unit2 is Medic){
    print('메딕 입니다.');
  }else{
    print('메딕이 아닙니다.');
  }
}
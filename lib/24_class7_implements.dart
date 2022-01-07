abstract class Greet{
  greet();
}

abstract class Talk{
  talk();
}

//하나만 상속 가능
class Morning extends Greet//, talk
{
  greet() { print("인사"); }
}

//여러개 구현 가능
class Evening implements Greet, Talk
{
  greet() { print("인사"); }
  talk() { print("대화"); }
}

void main()
{
  var greet = Morning();
  greet.greet();

  var hi2 = Evening();
  hi2.greet();
  hi2.talk();
}
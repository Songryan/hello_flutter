void main()
{
  // Set : 데이터 순서가 없고 중복 허용하지 않음

  // Set<String> set1 = {'c','b','a','a'}; // 초기값 에러
  Set<String> set1 = {'c','b','a'};

  set1.add('a');    // 추가되지 않는다.
  set1.add('a');    // 추가되지 않는다.
  set1.add('d');
  print(set1);

  set1.remove('c');
  print(set1);

  // *** 값 존재 유무 체크가 목적 **
  var bCheck = set1.contains('b');
  if(bCheck) print("b는 존재하는 값입니다.");

  // 인덱스로 개별 값 접근. 단, List와 같은 방법이 아님에 유의할것.
  for(int i=0; i<set1.length; i++)
    {
      print('set1[${i}] -> ${set1.elementAt(i)}');
    }

  for (dynamic each in set1)
    {
      print(each);
    }

  // 스프레드 연산자 (...)
  var set2 = {...set1, 'x', 'y', 'z'};
  print(set2);
}
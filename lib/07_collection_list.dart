void main()
{
  // Dart는 배열이 없다. 리스트로 사용한다.
  // List : 데어티 순서가 있고 중복 허용된다.

  List<String> list1 = ['a','b','c','d'];
  List<int> list2 = [1,2,3,1];

  var list3 = ['a','b','c','a'];
  list3.add('d');             // 데이터가 추가
  print(list3);

  list3.remove('a');          // 앞의 a(인덱스0)가 삭제됨
  print(list3);

  list3.removeAt(2);          // 인덱스에 위치한 값 삭제됨
  print(list3);

  // 컬렉션의 크기만큼 인덱스로 개별 값 접근
  for(int j=0; j<list3.length;j++)
    {
      print('list3[$j] -> ${list3[j]}');
    }

  // foreach문을 통해 컬렉션 전체 출력
  for (var each in list3)
    {
      print(each);
    }

  // 스프레드 연산자 (...) : 배열을 연결할때 사용
  var list4 = [...list2, 5, 6, 7];
  print(list4);
}
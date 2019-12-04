void main(){
  //  for loop
  for (var i = 0; i < 10; i++) {
    if( i%2==0){
      print(i);//=>0,2,4,6,8
    }
  }
 
  List people = ["jenny","jolly","jerry"];
  
  // print(people[0]);
  for (var i = 0; i < people.length; i++) {
    print('\{for loop\} =>${people[i]}');
  }
  
  // for in
  for (String person in people) {//可定义为 var String ...
    print('\{for in\} => $person');
  }

  //while loop
  int i=0;
  while (i<people.length) {//不确定循环次数的时候用
    print('\{while loop\} => ${people[i]}');
    i++;
  }

  // do while
  int k=0;
  do{
    print("\{do while\} => ${people[k]}");
    k++;
  }while(k< people.length);

  // break 停止循环
  for (var i = 0; i < 10; i++) {
    if(i==3){
      break;
    }
    print(i);
  }

  //指定停止某循环
  // for (var i = 0; i < 3; i++) {
  //   for (var j = 0; j < 3; j++) {
  //     print("$i and $j");
  //     if(i==2 && j==2){
  //       break;//停止内层循环=>I/flutter (10858): 0 and 0 0 and 1  1 and 2 1 and 1 1 and 2 2 and 0 2 and 1
  //     }
  //   }
  // }
  outerLoop:
  for (var i = 0; i < 3; i++) {
    innerLoop:
    for (var j = 0; j < 3; j++) {
      print("$i and $j");
      if(i==2 && j==2){
        break innerLoop;//停止内层循环=>I/flutter (10858): 0 and 0 0 and 1  1 and 2 1 and 1 1 and 2 2 and 0 2 and 1
      }
    }
  }

  //continue
  for (var i = 0; i < 3; i++) {
    if(i==1){
      continue;//停止某次循环
    }
    print(i);
  }
}

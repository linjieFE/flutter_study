void main(){
  // 分支 
  var salary=2000;
  if(salary>2000){
    print("$salary 大于2000");
  }else if(salary<2000){
    print("$salary 小于2000");
  }else{
    print("$salary 等于2000");
  }

  int a=2;
  int b=3;
  // ? : 三元表达式
  a<b? print("$a smaller") : print("$b smaller");

  // ?？ 表达式
  String name = "Jenny";//null
  String nameTo = name ?? "who?";
  print(nameTo);//name 为 null =>who? ;name有值=>Jenny

  //switch
  String grade = "A";
  switch(grade){
    case 'A':
      print("good"); 
      break;
    case 'B':
      print("bad"); 
      break;
    default:
     print("you have not score!");
  }
}

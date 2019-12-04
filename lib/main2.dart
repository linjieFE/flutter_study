void main(){
  print("hello world Flutter!");
  //=>调试=>在不调试的情况下启动=> 下方调试 控制台 打印出 I/flutter ( 8931): hello world Flutter!
  // 所有的代码都需要写的mian函数内

  // 变量 和数据类型
  // Number: int/double
  int score=23; //int整型（整数） 
  double percentage = 3.14;// double 浮点数类型（有小数）
  print(score);
  print( percentage );

  // String
  String name= "jenny";
  print(name);

  // Boolean
  bool isValid = true;
  print(isValid);

  // String 转义
  String s1 ='i\'m jenny';//  \ 为转义符号
  print(s1);

  // String 拼接
  print('你叫什么？'+s1);
  
  // 不同类型 不可拼接
  // print('你叫什么？'+s1.length);//=>s1.length会飘红报错
  // 正确的方式
  print('你的年龄？'+s1.length.toString());
  // 或者
  print('你的年龄？?- ${s1.length}');
  //建议：使用["xxx $name"] 替代["xxx" + name]

  // $变量
  int a = 20;
  int b = 10;
  print('the sum of $a and $b is ${a+b}');
}
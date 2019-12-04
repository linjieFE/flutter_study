/* *
 * 1。定义函数
 * 2。函数传参
 * 3。函数返回值
 * 4。函数默认值
 * 5。箭头函数（无返回值）
 * 6。箭头函数（有返回值）
 * 7。函数参数
 * 8。函数参数 命名
 * 9。函数参数 赋默认值
 */
void main(){//void 无返回值的函数
  // 函数：具有一定功能的代码段
  // 调用函数
  sumValue();
  sumValue2(2,4);
  sumValue3(6,6);//这一步不会打印
  String sum = sumValue3(6,6);
  print(sum);
  int sum1 =sumValue4(5,5);
  print(sum1);//=>null
  int sum2 = sumValue5(1,1);
  print(sum2);//=>2
  sumValue6(2,2);//=>4
  printCities("北京", "上海", "成都");
  printCountries("中国", "美国"); //这时少传参数报错
  printCities1("北京", "上海", name3: "成都");//key 名称需与 参数名相对应
  printCities2("北京", "上海");
}
//1。定义函数
void sumValue(){
  int a=2;
  int b=3;
  int sum = a+b;
  print('a + b = $sum');
}

//2。定义函数
void sumValue2(int a, int b){
  int sum = a+b;
  print('a + b = $sum');
}

//函数返回值
String sumValue3(int a, int b){
  int sum = a+b;
  return 'a + b = $sum';
}

// 函数默认值
int sumValue4(int a, int b){
  int sum = a+b;
}

// 5。箭头函数（无返回值）
void sumValue6(int a, int b)=>  print("${a + b}");

// 6。箭头函数（有返回值）
int sumValue5(int a, int b)=>  a + b;


 // 7。函数参数
 void printCities(String name1, String name2, String name3){
  print('name1= $name1');
  print('name2= $name2');
  print('name3= $name3');
}

// 7。函数参数（可选参数）[]
 void printCountries(String name1, String name2, [String name3]){//调用时可选传参加[]
  print('name1= $name1');
  print('name2= $name2');
  print('name3= $name3');
}

//8。 函数参数 命名 {}
void printCities1(String name1, String name2, {String name3}){//调用时需命名传参加{}
  print('name1= $name1');
  print('name2= $name2');
  print('name3= $name3');
}

// 9。函数参数 赋默认值
 void printCities2(String name1, String name2, {String name3="杭州"}){//调用时需命名传参加{}
  print('name1= $name1');
  print('name2= $name2');
  print('name3= $name3');
}
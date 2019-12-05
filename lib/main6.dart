/* * try catch on finally
 * 1。try:执行的代码，其中可能有导师常。一亘发现异常，则立即跳到catch执行。否则不会执行catch里面的内容
 * 2。catch: 除非try 里面执行代码发生了异常，否则这里的代码不会执行。
 * 3。on ：当你需要处理指定异常类型的时候用 on
 * 4。finally： 不管什么时情况都会执行，
 * 包括 try catch 里面用了 return,
 * 可以理解为只要执行了try 或者 catch,就一定会执行
 * 5。实现自已的异常捕获方法
 */
void main() {
  // int result =12 ~/0;//=> 抛错信息 IntegerDivisionByZeroException
  // print(result);
  print("CASE 1");
  try{//返回大于0的整数值
    int result =12 ~/0;// 注：（ ~/ 除以）
    // int result1 =12 ~/2;
    print(result);
    // print(result1);//=>6 （ ~/ 除以）
  } 
  // on IntegerDivisionByZeroException {
  //   print("Cannot divide by Zoro");//运行 第15行时
  // }
  catch(e,s){
    print(e);//运行 第15行时,如果没有 on 则运行到 catch
    // print("STACK TRACE \n $s");//更详细的抛错
  } finally{
    print("不管有没有异常都会执行");
  }

  print("CASE 5");
   
  try{
    depositMoney(-200);
  }catch(e){
    print("error is ${e.errorMsg()}");
  }
}


class DepositException implements Exception{
  String errorMsg(){
    return "金额不能少于0元";
  }
}

void depositMoney(int amount) {
  if(amount <0 ) {
    throw new DepositException();
  }
}

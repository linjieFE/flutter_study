/* * 
 * 1。类的基础知识
 * 2。构造函数
 * 3。构造函数参数
 * 4。自定义构造函数
 */
void main() {
  //step 2 实例化
  var student1=Student(10, "jenny");
  // student1.id=10;
  // student1.name="jenny";
  print("${student1.id} and ${student1.name}");
  student1.sleep();
  student1.study();
  var student2 = Student.myCustomConstructor(30, "zheng");
  print("${student2.id} and ${student2.name}");
}
// step1 定义类 注：类名首字母大字
class Student{
  int id;
  String name;//学生名
  void study(){//方法
    print("${this.name} is now stading");
  }
  void sleep(){
    print("${this.name} is now sleep");
  }
  // 构造函数 类例es6 constructor 这里名称与类名相同
  // step3
  // Student(int id, String name){
  //   this.id=id;
  //   this.name= name;
  //   print("这个就是构造函数，只要类会实例，就会自动执行");
  // }
  // step3-1 简写
  // Student(int _id, String _name){
  //   id=_id;
  //   name= _name;
  //   print("这个就是构造函数，只要类会实例，就会自动执行");
  // }
  // step3-2 如构造函数内 没有执行内容 可再简写为如下
  Student(this.id, this.name);

  // 自定义构造函数
  Student.myCustomConstructor(this.id, this.name);
}

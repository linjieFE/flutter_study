/* * 类的继承和重写类的方法
 * 1。自定义setter 和 getter
 * 2。类的继承
 * 3。重写父类主法和属性
 */

void main() {
  var studuent1 = Studuent('Jenny',20);
  studuent1.classroom = "大三（3）班"; //调用默认的setter方法 无返回值
  print("我是：${studuent1.name},今年${studuent1.age}岁");
  print("我所在的班级是：${studuent1.classroom}"); //调用默认的getter方法 有返回值

  studuent1.setName="Jerry"; //调用自定义的setter方法 无返回值
  print(studuent1.getName);//调用自定义的getter方法 有返回值
  var dog = Dog();
  dog.name="hali";
  dog.color="黑色";
  dog.bark();
  dog.eat();//extends继承之后 子类可以调用父类的方法
  print("我有一条${dog.color}汪叫：${dog.name}");

  // 也可以实例化父类
  var animal = Animal();
  animal.color="白色";
  animal.eat();
  
  //子类属性覆盖父类
  var fish = Goldfish();
  print("我有一条鱼它是：${fish.color}");
  fish.bark();
}

class Studuent{
  String classroom;
  String name;
  int age;
  Studuent(this.name,this.age);
  // void set setName(String _name){//set关键字
  //   this.name = _name;
  // }
  //简写set
  // void set setName(String _name)=> this.name = _name;
  //再简
  void set setName(_name)=> name = _name;
  

  // String get getName{//get关键字
  //   return this.name;
  // }
  //简写get
  String get getName=> this.name;  
}

//2。 类的继承
class Animal {
  String color;
  void eat(){
    print("eat food!");
  }
}

class Fish {
  String color="白色";
  void eat(){
    print("fish food!");
  }
}

class Dog extends Animal{
  String color="black";
  String name;
  void bark(){
    print("bark!");
  }
  // void eat(){
  //   print("eat Bone!");
  // }
}

class Cat extends Animal{
  // String color;
  String age;
  void meow(){
    print("meow!");
  }
  // void eat(){
  //   print("eat Fish!");
  // }
}

//3.类的重写
class Goldfish extends Fish{
  String color="红色"; //重写父类=> 就近原则选找子类，再找父类，向上查找
  String name;
  void bark(){
    print("po po swim!");
  }
}

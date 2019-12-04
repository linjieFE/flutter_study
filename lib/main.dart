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
// import 'package:flutter/material.dart';
// /*  flutter/material.dart 是一个ui库
//  *   flutter所有的组件都是一个Widget
// */
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   // 这个widget是应用程序的根。
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         /** 这是你申请的主题。
//          * 试着用“flutter run”运行你的应用程序。您将看到应用程序有一个蓝色的工具栏。
//          * 然后，在不退出应用程序的情况下，尝试将下面的primarySwatch更改为Colors.green，
//          * 然后调用“hot reload”（在运行“flutter run”的控制台中按“r”，
//          * 或者将更改保存到flutter IDE中的“hot reload”）。
//          * 注意，计数器没有重置回零；应用程序没有重新启动。
//         */
//         primarySwatch: Colors.blue,//Colors.red 我们看到 模拟器界面变成红色
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page（举个🌰）'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//   /*
//    * 这个widget是应用程序的主页。它是有状态的，意思是
//    * 它有一个状态对象（定义如下），其中包含影响其外观的字段。
//    * 这个类是状态的配置。它保存父程序（在本例中是App widget）
//    * 提供的值（在本例中是title），并由状态的build方法使用。
//    * widget子类中的字段总是标记为“final”。
//    * */

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.

//       /** 
//        * 对setState的调用告诉Flutter框架在这种状态下发生了一些变化，
//        * 这导致它重新运行下面的build方法，
//        * 以便显示可以反映更新的值。
//        * 如果我们在不调用setState（）的情况下更改了计数器，
//        * 则不会再次调用生成方法，因此看起来不会发生任何事情。
//       */
//       _counter++;//_counter=_counter + 2;=>点添加变成加2
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     /** 此方法在每次调用setState时都会重新运行，例如由上面的增量计数器方法执行的操作。
//      * Flutter框架已经过优化，使重新运行构建方法变得更快，
//      * 这样您就可以重建任何需要更新的内容，而不必单独更改widget的实例。
//     */
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         /** 这里，我们从MyHomePage对象中获取值，
//          * 该对象是由App.build方法，并使用它设置appbar标题。
//          **/
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         /** Center是一个布局widget。它接受一个单独的子对象，并将其定位在父对象的中间。 */
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           /**
//            * Column也是一个布局widget。它获取一个子列并垂直排列他们。
//            * 默认情况下，它会调整自身大小以水平适应其子级，并尝试与父级一样高。
//            * 调用“debug painting”（在控制台中按“p”，选择Android中Flutter检查器的“Toggle Debug Paint”操作或Visual Studio代码中的“Toggle Debug Paint”命令）
//            * 查看每个widget的线框。
//            * Column具有各种属性来控制其自身大小和如何定位子列。这里我们使用MaxAxIS对齐
//            * 把子列垂直地放在中间；
//            *  这里的主轴是垂直轴，因为纵列是垂直的（横轴是水平的）。
//            */
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

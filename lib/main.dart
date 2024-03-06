import 'package:flutter/material.dart';

//ملخص لتطبيق نظام التعليم:
//
// تطبيق نظام التعليم هو تطبيق متكامل على الهواتف المحمولة مصمم لتسهيل جوانب مختلفة من عملية التعليم، بما في ذلك إدارة الطلاب، وإدارة الدورات، والتواصل بين الأطراف المعنية، والوصول إلى الموارد التعليمية. يهدف التطبيق إلى تبسيط العمليات داخل المؤسسات التعليمية وتعزيز تجربة التعلم للطلاب.
//
// الميزات:
//
// المصادقة على المستخدم:
//
// السماح للمستخدمين (الطلاب، المعلمين، المسؤولين) بتسجيل الدخول بأمان إلى حساباتهم باستخدام البريد الإلكتروني/كلمة المرور أو المصادقة عبر وسائل التواصل الاجتماعي.
// إدارة الطلاب:
//
// تمكين المسؤولين من إدارة سجلات الطلاب، بما في ذلك التسجيل، والمعلومات الشخصية، وسجلات الحضور، وتتبع الأداء الأكاديمي.
// السماح للطلاب بعرض ملفاتهم الشخصية، والتحقق من سجلات الحضور، والوصول إلى درجاتهم والسجل الأكاديمي.
// إدارة الدورات:
//
// توفير منصة للمعلمين والمسؤولين لإنشاء، وتحرير، وإدارة الدورات.
// السماح للمعلمين بتحميل مواد الدورة مثل المناهج الدراسية، وملاحظات المحاضرات، والواجبات، والاختبارات.
// تقديم الواجبات والتقييم:
//
// السماح للطلاب بتقديم الواجبات إلكترونياً من خلال التطبيق.
// تمكين المعلمين من تقدير الواجبات، وتقديم التغذية الراجعة، ومشاركة الدرجات مع الطلاب.
// أدوات الاتصال:
//
// تيسير التواصل بين الطلاب والمعلمين وأولياء الأمور من خلال ميزات الرسائل.
// السماح للمعلمين بإرسال إعلانات وتذكيرات وتحديثات للطلاب وأولياء الأمور.
// توفير منتدى أو لوحة نقاش حيث يمكن للطلاب طرح الأسئلة والتعاون مع الأقران.
// التقويم والجدولة:
//
// دمج ميزة التقويم لعرض التواريخ الهامة مثل الامتحانات وتاريخ استحقاق الواجبات وفعاليات المدرسة.
// السماح للمستخدمين بتعيين تذكيرات للأحداث القادمة والمواعيد النهائية.
// مكتبة الموارد:
//
// توفير الوصول إلى الموارد التعليمية مثل الكتب الإلكترونية، والمقالات، ومقاطع الفيديو، والمواد التعليمية التفاعلية.
// تصنيف الموارد استنادًا إلى المواد، والمواضيع، والمستويات التعليمية لتسهيل التصفح.
// تحليل الأداء:
//
// توفير لوحات المعلومات والتقارير للمسؤولين والمعلمين والطلاب لتتبع الأداء الأكاديمي، والحضور، والمشاركة.
// إنشاء تقارير وتحليلات لتحديد المجالات التي يمكن تحسينها ومراقبة تقدم الطلاب مع مرور الوقت.
// إشعارات الدفع:
//
// إرسال إشعارات فورية للمستخدمين للتحديثات الهامة، والمواعيد النهائية، والإعلانات.
// السماح للمستخدمين بتخصيص تفضيلات الإشعار استنادًا إلى تفضيلاتهم واهتماماتهم.
// الوصولية والتعريب:
//
// التأكد من قدرة التطبيق على الوصول لذوي الاحتياجات الخاصة من خلال تنفيذ ميزات الوصولية مثل قارئي الشاشة وأوامر الصوت.
// دعم التعريب لاستيعاب المستخدمين من مناطق مختلفة من خلال توفير الدعم متعدد اللغات وتكييف المحتوى استنادًا إلى تفضيلات المستخدم
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

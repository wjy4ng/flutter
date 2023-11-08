import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  String _testText = 'hello';
  Color _color = Colors.blue;

  @override // setState() 사용시 build를 재호출하여 switchValue가 false로 계속 초기화된 것을 처음만 초기화해주는 걸로 바꿈
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Hello World',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
            body: Center(
          child: ElevatedButton(
              child: Text('$_testText'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(_color)),
              onPressed: () {
                if (_color == Colors.blue) {
                  setState(() {
                    _testText = 'flutter';
                    _color = Colors.amber;
                  });
                } else {
                  setState(() {
                    _testText = 'flutter';
                    _color = Colors.blue;
                  });
                }
              }),
        )));
  }
}

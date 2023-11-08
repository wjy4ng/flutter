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
  var _switchValue;

  @override // setState() 사용시 build를 재호출하여 switchValue가 false로 계속 초기화된 것을 처음만 초기화해주는 걸로 바꿈
  void initState() {
    super.initState();
    _switchValue = false;
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
                child: Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              print(value);
              _switchValue = value;
            });
          },
        ))));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}

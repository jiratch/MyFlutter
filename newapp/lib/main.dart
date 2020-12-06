import 'package:flutter/material.dart';
import 'components/RedeemProlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items =  ['แลกซื้อ A','แลกซื้อ B','แลกซื้อ C'];
  final List<String> items2 = ['โปร', 'โปร', 'โปร', 'โปร', 'โปร', 'โปร', 'โปร'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FB),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: WillPopScope(
        onWillPop: () {
          Navigator.pop(context);
        },
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  child: Container(
                height: 485,
                child: ListView(
                              
                    children: <Widget>[
                      RedeemProlist(items: items, items2: items2)
                    ]),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

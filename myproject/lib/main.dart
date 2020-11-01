import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();
  List<String> elements = [];
  var map;
  var number = [];
  var count = [];

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  void _addNumber(val) {
    map = {};
    setState(() {
      elements.add(val);
      elements.forEach((element) {
        if (!map.containsKey(element)) {
          map[element] = 1;
        } else {
          map[element] += 1;
        }
      });

      print("map = $map");
      number = map.keys.toList();
      count = map.values.toList();
      print("number = $number");
      print("newcount = $count");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hi flutter"),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(top: 20.0, left: 10.0),
                      width: 300.0,
                      child: TextField(
                        controller: myController,
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '',
                        ),
                        style: TextStyle(fontSize: 25))),
                  Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      width: 50.0,
                      child: FloatingActionButton(
                        onPressed: () => _addNumber(myController.text),
                        tooltip: 'Increment',
                        child: Icon(Icons.add),
                      )),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: 100.0,
                    child: Text("Items",style: TextStyle(fontSize: 25))),
                    Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: 100.0,
                    child: Text("Amount",style: TextStyle(fontSize: 25))
                             
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: 100.0,
                    child: Column(
                        children: number.map((i) => new Text(i.toString(),
                              style: TextStyle(fontSize: 30))).toList()),
                  ),
                    Container(
                    margin: const EdgeInsets.only(left:100,top: 20.0),
                    width: 100.0,
                    child: Column(
                        children: count.map((i) => new Text(i.toString(),
                                style: TextStyle(fontSize: 30))).toList()),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

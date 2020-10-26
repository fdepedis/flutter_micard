import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MiCard',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter MiCard Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          //verticalDirection: VerticalDirection.up,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 100.0,
              //height: 100.0,
              //margin: EdgeInsets.only(left: 30.0),
              //padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Text('Container'),
            ),
            SizedBox(
              //height: 20.0,
              width: 20.0,
            ),
            Container(
              //width: 300.0,
              height: 100.0,
              color: Colors.blue,
              child: Text('Container'),
            ),
            Container(
              //width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: Text('Container'),
            ),
            /*Container(
              width: double.infinity,
              height: 10.0,
            ),// infinity container*/
          ],
        ),
      ),
      /*body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),*/
      /* floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

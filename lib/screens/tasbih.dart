import 'package:flutter/material.dart';
import 'dart:math' as math;

class TasbihPage extends StatefulWidget {
  const TasbihPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<TasbihPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TasbihPage> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Clean your heart:',
              style: TextStyle(fontSize: 50,
              color: Colors.green),
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 45,
              color: Colors.green),

            ),
          ],
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat ,
        floatingActionButton:
      SizedBox(
        height:100,
        width:100,
      child: FloatingActionButton(
        backgroundColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(
          Icons.favorite,
          size: 50,
        ),

      ),)
    );
  }
}

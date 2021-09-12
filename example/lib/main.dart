import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shaded_text_with_color/shaded_text_with_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shaded Text Example'),
      ),
      body: Center(
        child: ShadedTextWithColor(
          shadedBuilder: (context, text, color) => Container(
              child: Card(
            elevation: 8,
            child: Text(
              text,
              style: TextStyle(color: color, fontSize: 25),
            ),
          )),
          shadeColor: Colors.deepOrange.withOpacity(0.4),
          textColor: Colors.green,
          text: 'Testing the shaded Text Widget',
          xTrans: 40.0,
          yTrans: 40.0,
        ),
      ),
    );
  }
}

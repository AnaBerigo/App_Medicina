import 'package:flutter/material.dart';
import 'screens/slide_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Medicina',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Comfortaa'),
      home: SlidePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterform/routes/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: 'Belajar Flutter - Form Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: buildRoute(context),
      debugShowCheckedModeBanner: false,
    );
  }
}

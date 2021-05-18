import 'package:covidapp/constraint.dart';
import 'package:covidapp/screens/home-screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19 app',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        // scaffoldBackgroundColor: kBacgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

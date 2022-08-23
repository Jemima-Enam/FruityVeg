import "package:flutter/material.dart";
import 'package:fruityveg/veiws/get_started_veiw.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: GetStartedView());
  }
}

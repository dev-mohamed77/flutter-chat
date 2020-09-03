import 'package:chat/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB)
      ),
      home: HomeScreen(

      ),
    );
  }
}
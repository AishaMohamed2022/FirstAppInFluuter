import 'package:app1/loginPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Login_Page(),
      debugShowCheckedModeBanner: false,
      
      
      );
   
  }
}

import 'package:eteee/acceuil/page1/header.dart';
import 'package:eteee/acceuil/page1/pageone.dart';
import 'package:eteee/acceuil/page5/budget.dart';
import 'package:eteee/acceuil/page6/statistique.dart';
import 'package:eteee/acceuil/page7/manage.dart';
import 'package:eteee/changed.dart';
import 'package:eteee/check.dart';
import 'package:eteee/login.dart';
import 'package:eteee/password.dart';
import 'package:eteee/timer.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home :Login(),
    );
  }
}
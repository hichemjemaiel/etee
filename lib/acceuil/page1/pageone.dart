import 'package:eteee/acceuil/page1/header.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Header(),
      appBar: AppBar(
        title:Text("SideBar"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
    );
  }
}

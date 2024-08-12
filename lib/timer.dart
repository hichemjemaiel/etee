import 'package:flutter/material.dart';
import 'dart:async';
class TimerApp extends StatefulWidget {


  @override
  State createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  int _counter=20;
  late  Timer _timer;
  void start(){
    _timer=Timer.periodic(Duration(seconds : 1), (timer) {
      setState(() {
        if(_counter>0){

          _counter--;
        }
        else{
          _timer.cancel();
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$_counter"),
          ElevatedButton(onPressed: (){
            setState(() {
              start();
              _counter=20;
            });
          },
              child:Text("Send code"))
        ],
      ),
    );
  }
}

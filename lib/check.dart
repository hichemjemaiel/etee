import 'package:eteee/changed.dart';
import 'package:eteee/reset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  int _counter =30;
  late Timer _timer;
  void startTimer(){

    _timer = Timer.periodic(Duration(seconds :1), (timer) {
      setState(() {
        if(_counter> 0){
          _counter--;
        }else{
          _timer.cancel();
        }
      });
    });
  }

  TextEditingController editingController1 = TextEditingController();
  TextEditingController editingController2 = TextEditingController();
  TextEditingController editingController3 = TextEditingController();
  TextEditingController editingController4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
       Padding(padding: EdgeInsets.only(right: 20),child:  Icon(Icons.star_rate_sharp,size: 40,),),
        ],
      ),
      body: ListView(

        children: [
          Column(
            children: [

              SizedBox(height: 70,),
              Padding(padding: EdgeInsets.only(right: 20),child: Text("Please Check your email",style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 28),),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 10,left: 20),child: Text("We've sent a code to ",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black38
                  ),),),
                  Text("helloworld@gmail.com",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                  ),)
                ],
              ),
              SizedBox(height: 30,),
              Row(children: [
                Padding(padding: EdgeInsets.only(left: 20),child:
                Container(
                  height: 77,
                  width: 77,
                  child: TextField(
                    controller: editingController1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,

                      LengthLimitingTextInputFormatter(1),

                    ],
                    textAlign: TextAlign.center,

                  ),

                ),),
                SizedBox(width: 5,),
                Padding(padding: EdgeInsets.only(left: 20),child:
                Container(
                  height: 77,
                  width: 77,

                  child: TextField(

                    controller: editingController2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),

                    ],
                    textAlign: TextAlign.center,
                  ),

                ),),

                Padding(padding: EdgeInsets.only(left: 20),child:
                Container(
                  height: 77,
                  width: 77,
                  child: TextField(
                    controller: editingController3,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    textAlign:TextAlign.center,

                  ),

                ),),

                Padding(padding: EdgeInsets.only(left: 20),child:
                Container(
                  height: 77,
                  width: 77,
                  child: TextField(
                    controller: editingController4,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    textAlign: TextAlign.center,

                  ),

                ),),




              ],),
              SizedBox(height: 30,),
              Container(
                height: 50,
                width: 380,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                  onPressed: (){
                    if(editingController1.text.length==1 && editingController2.text.length==1 &&editingController3.text.length==1 &&editingController4.text.length==1){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Reset()));
                    }
                  },
                  child: Text("Verify",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),),
                ),
              ),
              SizedBox(height: 100,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 120),child: TextButton(onPressed: (){
                    setState(() {
                      startTimer();
                      _counter = 30;
                    });
                  },child: Text("Send code ",style: TextStyle(
                    color: Colors.black38,
                    fontSize: 20,
                  ),),),),
                  SizedBox(width:5,),
                  Text("$_counter s",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

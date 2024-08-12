import 'package:eteee/login.dart';
import 'package:flutter/material.dart';

class Changed extends StatefulWidget {
  const Changed({Key? key}) : super(key: key);

  @override
  _ChangedState createState() => _ChangedState();
}

class _ChangedState extends State<Changed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        
        children: [
          Padding(padding: EdgeInsets.only(top: 250,left: 180,right: 170),child: Icon(Icons.star_rate_sharp,size: 40,),),
          Padding(padding: EdgeInsets.only(top:10,left: 230,right: 150),child: Icon(Icons.star_rate_sharp,size: 30,),),
          SizedBox(height: 50,),
          Padding(padding: EdgeInsets.only(left: 100,right: 60),child: Text("Password changed",style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.only(left: 10),child: Text("Your password has been changed succesfully",style: TextStyle(
            fontSize: 18,
            color: Colors.black38,
          ),),),
          SizedBox(height: 50,),
          Container(
            height: 50,
            width: 350,
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor: Colors.black

              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text("Back to login",style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),
            ),
          )
        ],
      ),
    );
  }
}

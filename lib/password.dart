import 'package:eteee/check.dart';
import 'package:eteee/login.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(padding: EdgeInsets.only(top: 10,left: 300,right: 20),child: Icon(Icons.star_rate_sharp,size: 40  ,),),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(

            children: [

              Padding(padding: EdgeInsets.only(
                  top: 100,right: 180
              ),child: Text("Forgot password?",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(left: 20),
                child: Text("Don't worry it happens.Please enter the email associated with your acccount",style: TextStyle(
                    fontSize: 18,
                    color: Colors.black38
                ),),),
              SizedBox(height: 30,),
              Padding(padding: EdgeInsets.only(right: 230),
                child: Text("Email address",style: TextStyle(
                    fontSize: 20
                ),),),
              SizedBox(height: 20,),
              Container(
                height: 60,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12
                ),
                child: TextField(
                  controller: editingController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      hintText: "Enter your email address"
                  ),

                ),

              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                if(editingController.text.isNotEmpty){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Check()));
                }


              },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.black
                  ),
                  child: Container(
                      height: 50,
                      width: 300,

                      child: Center(
                        child: Text("Send code",style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),),
                      )
                  )),
              SizedBox(height: 200,),
              Padding(padding: EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    Text("Remember password?",style: TextStyle(
                        color: Colors.black38,
                        fontSize: 20

                    ),),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
                    },
                        child: Text("Log in",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),))
                  ],
                ),),
            ],
          ),
        ],
      )
    ) ;// Replace Placeholder with your actual widget content
  }
}

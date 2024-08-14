import 'package:eteee/acceuil/page1/pageone.dart';
import 'package:eteee/password.dart';
import 'package:eteee/sign_up_page.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _secure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 843,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/log.png"),
                fit: BoxFit.fill, // Adjust the fit as needed
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Welcome to Your App",style: TextStyle(
                  color: Color(0xFFEECD5C),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),

                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),

                        ),
                        fillColor: Color(0xFFD3D3D3),
                        filled: true,
                        hintText: "Enter your login",
                        prefixIcon: Icon(Icons.person)

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  child: TextField(

                    obscureText: _secure,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      hintText:"Enter your password",
                      fillColor: Color(0xFFD3D3D3),
                      prefixIcon: Icon(Icons.password)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageOne()));
                },
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEECD5C)
                    ),
                    child: Container(
                      width: 200,
                      height: 50,

                      child: Center(
                        child: Text("Sign In ",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),)),
                      )
                    ),
                    SizedBox(height: 15,),
                    Padding(padding: EdgeInsets.only(left: 180),child:
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Password()));
                    },
                        child:Text("Forgot Password ? ",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)),),
                   SizedBox(height: 20,),
                   Text("------ Or continue with ------",style: TextStyle(
                     color: Color(0xFFEECD5C),
                     fontSize: 20
                   ),),
                  SizedBox(height: 20,),
                  Row(

                    children: [

                      Padding(padding: EdgeInsets.only(left: 100),child: GestureDetector(onTap: (){},child:
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(

                          image: DecorationImage(


                            image: AssetImage("images/app.png"),

                            fit: BoxFit.fill,
                            // Adjust the fit as needed
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),




                      ),),),
                      SizedBox(width: 30,),
                      GestureDetector(onTap: (){},child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(

                          image: DecorationImage(


                            image: AssetImage("images/google.png"),

                            fit: BoxFit.fill,
                            // Adjust the fit as needed
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),




                      ),),
                      SizedBox(width: 30,),
                      GestureDetector(onTap: (){},child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(

                          image: DecorationImage(


                            image: AssetImage("images/facebook.png"),
                            fit: BoxFit.fill,
                            // Adjust the fit as needed
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),




                      ),),
                    ],
                  ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 60),child: Text("Don't have an account ?",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );

                    }, child:Text("Sign Up",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFEECD5C)
                    ),))
                  ],
                )
              ],
            )

          )
        ],
      ),

    );


  }
}

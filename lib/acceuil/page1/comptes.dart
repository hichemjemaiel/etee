import 'package:eteee/acceuil/page1/comptesD.dart';
import 'package:eteee/acceuil/page1/create.dart';
import 'package:flutter/material.dart';

class Comptes extends StatefulWidget {
  const Comptes({super.key});

  @override
  State<Comptes> createState() => _ComptesState();
}

class _ComptesState extends State<Comptes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mes Comptes",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bonjour ! ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "User",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                GestureDetector(onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>CompteD()));
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                    image: DecorationImage(
                                        image: AssetImage("images/pro.png"),
                                        fit: BoxFit.fill),
                                  ),
                                ),),
                                Text(
                                  "Compte",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                        SizedBox(height: 50,),

                        Container(
                          height: 300,
                          width: 700,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/digibyte-dgb.gif")
                            )
                          ),
                        ),
                        SizedBox(height: 60,),
                        Container(

                          height: 50,
                          width: 350,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Create()));
                          }
                            ,style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            child: Text("Créer compte",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),),),
                        )


                      ],

                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 1,
              right: 0,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage("images/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Statistique extends StatefulWidget {
  const Statistique({super.key});

  @override
  State<Statistique> createState() => _StatistiqueState();
}

class _StatistiqueState extends State<Statistique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3D3D3),
      appBar: AppBar(
        backgroundColor: Color(0xFFD3D3D3),
        title: Text(
          "Statistiques",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shopping",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 180,
                        child: LinearProgressIndicator(
                          value: 0.3,
                          color: Colors.green,
                          backgroundColor: Colors.grey,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(right: 10),child: Text("50 000 XAF/250 000 XAF",style: TextStyle(
              color: Colors.black38
            ),),),
            SizedBox(height: 5,),
            Padding(padding: EdgeInsets.only(left: 70),child: Row(
              children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.edit,color: Colors.green,)
                ),
                Text("Modifier mon budget",style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),),
            SizedBox(height: 20,),
            Container(
              height: 520,
              width:700,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Container(
                    height: 80,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Color(0xFFD3D3D3),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text("-",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white
                            ),)
                          ),
                        ),

                        Column(children: [
                          Padding(padding: EdgeInsets.only(left: 25,top: 20,right: 80),child: Text("Club 241",style: TextStyle(fontWeight: FontWeight.bold),),),

                          Padding(padding: EdgeInsets.only(top: 5,left: 25),child: Text("06/07/2023 a 10 H44"),),

                        ],),
                        Column(children: [
                          Padding(padding: EdgeInsets.only(right: 20,top: 8),child: Text("- 20 000 FCFA",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                          ),),),
                          Padding(padding: EdgeInsets.only(left: 20),child:
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),),

                        ],),

                      ],

                    ),),

                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 80,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Color(0xFFD3D3D3),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: Text("-",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white
                              ),)
                          ),
                        ),

                        Column(children: [
                          Padding(padding: EdgeInsets.only(left: 25,top: 20,right: 80),child: Text("Chez Luc",style: TextStyle(fontWeight: FontWeight.bold),),),

                          Padding(padding: EdgeInsets.only(top: 5,left: 25),child: Text("05/07/2023 a 12 H00"),),

                        ],),
                        Column(children: [
                          Padding(padding: EdgeInsets.only(right: 20,top: 8),child: Text("- 10 000 FCFA",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red
                          ),),),
                          Padding(padding: EdgeInsets.only(left: 20),child:
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),),

                        ],),

                      ],

                    ),),

                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 80,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Color(0xFFD3D3D3),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: Text("-",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white
                              ),)
                          ),
                        ),

                        Column(children: [
                          Padding(padding: EdgeInsets.only(left: 20,top: 20,right: 80),child: Text("Supemarché",style: TextStyle(fontWeight: FontWeight.bold),),),

                          Padding(padding: EdgeInsets.only(top: 5,left: 2),child: Text("06/07/2023 a 10 H44"),),

                        ],),
                        Column(children: [
                          Padding(padding: EdgeInsets.only(right: 2,top: 8),child: Text("- 20 000 FCFA",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red
                          ),),),
                          Padding(padding: EdgeInsets.only(left: 20),child:
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),),

                        ],),

                      ],

                    ),),

                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

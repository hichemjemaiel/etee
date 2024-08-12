import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Transactions",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),child:
            Container(
              height: 2000,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50),child:
                  Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 100,top: 40),child:
                        Text("18/07/2024 14:11:52",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Service : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 70),child: Text("Retrait",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Montant : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 40),child:
                            Text("- 2000 XAF",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                      ],
                    )
                    ,),



                  ),
                  Padding(padding: EdgeInsets.only(top: 50),child:
                  Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 100,top: 40),child:
                        Text("18/07/2024 14:11:52",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Service : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 70),child: Text("Retrait",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Montant : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 40),child:
                            Text("- 2500 XAF",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                      ],
                    )
                    ,),



                  ),
                  Padding(padding: EdgeInsets.only(top: 50),child:
                  Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 100,top: 40),child:
                        Text("18/07/2024 14:11:52",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Service : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 70),child: Text("Dépots",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Montant : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 40),child:
                            Text("  2000 XAF",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                      ],
                    )
                    ,),



                  ),
                  Padding(padding: EdgeInsets.only(top: 50),child:
                  Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 100,top: 40),child:
                        Text("18/07/2024 14:11:52",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Service : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 70),child: Text("Retrait",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Montant : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 40),child:
                            Text("- 3000 XAF",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                      ],
                    )
                    ,),



                  ),
                  Padding(padding: EdgeInsets.only(top: 50),child:
                  Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 100,top: 40),child:
                        Text("18/07/2024 14:11:52",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Service : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 70),child: Text("Dépots",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 50,top: 20,left: 30),child:
                            Text("Montant : ",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 40),child:
                            Text("  3500 XAF",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                      ],
                    )
                    ,),



                  ),
                ],
              ),
            ),),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CompteD extends StatefulWidget {
  const CompteD({super.key});

  @override
  State<CompteD> createState() => _CompteDState();
}

class _CompteDState extends State<CompteD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey,
      appBar: AppBar(
        title: Text("Account",style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,

        ),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,top: 20,right: 20),
              height: 2150,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20),child: Text("Informations du compte : ",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),),),

                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.only(right: 180),child: Text("Compte 1 :",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.home_filled,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Agence : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("Agence 2",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.account_balance_wallet,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Compte : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("Compte Courant",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.password,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Rib : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("65350417536661376789791",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.monetization_on,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Solde : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("0",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.monetization_on,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("S : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("Active",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.only(right: 180),child: Text("Compte 1 :",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.home_filled,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Agence : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("Agence 2",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.account_balance_wallet,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Compte : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("Compte Courant",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.password,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Rib : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("65350417536661376789791",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.monetization_on,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Solde : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("0",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.monetization_on,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("S : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("Active",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Padding(padding: EdgeInsets.only(right: 180),child: Text("Compte 1 :",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.home_filled,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Agence : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("Agence 2",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.account_balance_wallet,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Compte : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("Compte Courant",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.password,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Rib : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("65350417536661376789791",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.monetization_on,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("Solde : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("0",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
                      ],
                    ),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),child: Row(
                      children: [
                        Icon(Icons.monetization_on,size: 30,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("S : ",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("Active",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white
                        ),),)
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

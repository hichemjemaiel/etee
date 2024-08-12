import 'package:flutter/material.dart';

class Budget extends StatefulWidget {
  const Budget({super.key});

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Color(0xFFD3D3D3),
      appBar: AppBar(
        title: Text("Budget",style: TextStyle(
          fontWeight: FontWeight.bold,

        ),),
        centerTitle: true,
        backgroundColor: Color(0xFFD3D3D3),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 470,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40)
            ),
            child: Column(

              children: [
                Padding(padding: EdgeInsets.only(top: 30,right: 80,left: 30),child:
                Text("Définissez le montant du budget",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(left: 45,right: 20),child: Text("Fixez le montant que vous souhaitez ne pas dépasseer",style: TextStyle(
                    fontSize: 18,
                    color: Colors.black38
                ),),),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(right: 230),
                child: Text("Catégorie",style: TextStyle(
                    fontSize: 20
                ),),),
                SizedBox(height: 20,),
                Container(

                  height: 50,
                  width: 320,
                  child: TextField(

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFFD3D3D3),
                      hintText: "Shopping",
                      contentPadding: EdgeInsets.symmetric( horizontal: 20.0),
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(right: 230),
                  child: Text("Montant",style: TextStyle(
                      fontSize: 20
                  ),),),SizedBox(height: 20,),
                Container(

                  height: 50,
                  width: 320,
                  child: TextField(

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      filled: true,
                      fillColor: Color(0xFFD3D3D3),
                      hintText: "10000",
                      suffix: Text("XAF"),
                      contentPadding: EdgeInsets.symmetric( horizontal: 20.0),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: 300,
                  
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                      
                    ),
                    onPressed: (){},

                    child: Text("confirmer",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                  ),
                )

              ],
            ),
          ),
        ],
      )
    );
  }
}

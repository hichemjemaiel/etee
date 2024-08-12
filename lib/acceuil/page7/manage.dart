import 'package:flutter/material.dart';

class Manage extends StatefulWidget {
  const Manage({super.key});

  @override
  State<Manage> createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3D3D3),
      appBar: AppBar(
        title: Text("Gérer mes budgets"),
        backgroundColor: Color(0xFFD3D3D3),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 70),
        child: Container(
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Shopping",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Padding(padding: EdgeInsets.only(right: 20),child: Text("0 XAF"),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Padding(padding: EdgeInsets.only(left: 150),child:
                Container(
                  width: 200,
                  child: LinearProgressIndicator(

                    value: 1,
                    backgroundColor: Colors.grey,
                    color: Color(0xFFD3D3D3),
                  ),
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.car_repair_sharp,
                      size: 30,
                      color: Colors.purple,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Transport",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Padding(padding: EdgeInsets.only(right: 20),child: Text("0 XAF"),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Padding(padding: EdgeInsets.only(left: 150),child:
                Container(
                  width: 200,
                  child: LinearProgressIndicator(

                    value: 1,
                    backgroundColor: Colors.grey,
                    color: Color(0xFFD3D3D3),
                  ),
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.house,
                      size: 30,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Epargne",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Padding(padding: EdgeInsets.only(right: 20),child: Text("0 XAF"),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Padding(padding: EdgeInsets.only(left: 150),child:
                Container(
                  width: 200,
                  child: LinearProgressIndicator(

                    value: 1,
                    backgroundColor: Colors.grey,
                    color: Color(0xFFD3D3D3),
                  ),
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.medical_services_sharp,
                      size: 30,
                      color: Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Soins",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Padding(padding: EdgeInsets.only(right: 20),child: Text("0 XAF"),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Padding(padding: EdgeInsets.only(left: 150),child:
                Container(
                  width: 200,
                  child: LinearProgressIndicator(

                    value: 1,
                    backgroundColor: Colors.grey,
                    color: Color(0xFFD3D3D3),
                  ),
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.people_alt,
                      size: 30,
                      color: Colors.brown,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Famille",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Padding(padding: EdgeInsets.only(right: 20),child: Text("0 XAF"),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Padding(padding: EdgeInsets.only(left: 150),child:
                Container(
                  width: 200,
                  child: LinearProgressIndicator(

                    value: 1,
                    backgroundColor: Colors.grey,
                    color: Color(0xFFD3D3D3),
                  ),
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.attach_money_sharp,
                      size: 30,
                      color: Colors.green,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Especes",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Padding(padding: EdgeInsets.only(right: 20),child: Text("0 XAF"),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Padding(padding: EdgeInsets.only(left: 150),child:
                Container(
                  width: 200,
                  child: LinearProgressIndicator(

                    value: 1,
                    backgroundColor: Colors.grey,
                    color: Color(0xFFD3D3D3),
                  ),
                ),),
              ),
              SizedBox(height: 50,),
              Container(
                height: 50,
                width: 350,

                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      backgroundColor: Colors.grey
                    ),
                    child: Text("Confirmer",style: TextStyle(fontSize:24,color: Colors.white),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

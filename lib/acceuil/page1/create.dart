import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  String? valueChoose;
  List<String> listItem = [
    "Agence 1", "Agence 2", "Agence 3", "Agence 4", "Agence 5"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "Create Account",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage("images/crt.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Informations du compte",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 150,left: 20,right: 20),
                    child: DropdownButton<String>(
                      hint: Text("Sélectionner une agence"),
                      dropdownColor: Colors.grey,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem<String>(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50),child: Text("choisissez type du Compte",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),),),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(right: 5,top: 30,left: 20),child:
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.circle)),),
                      Padding(padding: EdgeInsets.only(right: 50,top:25),child: Text("Epargne compte",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(right: 5,top: 30,left: 20),child:
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.circle)),),
                      Padding(padding: EdgeInsets.only(right: 50,top:25),child: Text("Compte Courant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey
                    ),
                        child: Text("Créer Compte",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),),),
                  )

                ],
              ),
            ),
          ),
          Positioned(
            top: 1,
            right: 0,
            child: Container(
              height: 10,
              width: 80,
            ),
          ),
        ],
      ),
    );
  }
}

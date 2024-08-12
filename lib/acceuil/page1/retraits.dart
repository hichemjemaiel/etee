import 'package:eteee/acceuil/page1/retraitsC.dart';
import 'package:flutter/material.dart';

class Retraits extends StatefulWidget {
  const Retraits({super.key});

  @override
  State<Retraits> createState() => _RetraitsState();
}

class _RetraitsState extends State<Retraits> {
  String? valueChoose;
  List<String> listItem = [
    "Compte 1", "Compte 2", "Compte 3", "Compte 4", "Compte 5"
  ];
  TextEditingController textEditingController =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Retraits",style:TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,

        )),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 20,top: 50,right: 180),child: Text("Solde Disponible",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white
            ),),),
            Padding(padding: EdgeInsets.only(top: 30,right: 200),child: Text("XAF 2.500",style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),),
            Container(
              margin: EdgeInsets.all(20),
              height: 550,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50,left: 20,right: 20),child:
                  Text("Entrez le montant que vous souhaitez retirer",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black38
                  ),),),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(padding: EdgeInsets.only(right: 150,top: 50),child:
                  Text("Entrer le montant : ",style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  )),),
                  SizedBox(height: 50,),
                  Container(
                    height: 50,
                    width: 330,
                    child: TextField(
                      controller: textEditingController,


                      decoration: InputDecoration(

                        contentPadding: EdgeInsets.only(
                            left: 20,right: 20,bottom: 20
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        fillColor: Colors.grey,
                        filled: true,
                        hintText: "XAF : ",

                      ),
                      keyboardType: TextInputType.number,

                    ),
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: EdgeInsets.only(top: 5,left: 20,right: 20),
                    child: DropdownButton<String>(
                      hint: Text("Sélectionner un compte"),
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
                  SizedBox(height: 50,),
                  Container(
                    height: 50,
                    width: 300,

                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(textEditingController.text.isNotEmpty){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RetraitsC()));
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10),

                          )

                      ),
                      child: Text("Suivant",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20
                      ),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

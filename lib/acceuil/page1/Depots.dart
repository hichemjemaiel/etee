import 'package:eteee/acceuil/page1/pageone.dart';
import 'package:flutter/material.dart';

class Depots extends StatefulWidget {
  const Depots({super.key});

  @override
  State<Depots> createState() => _DepotsState();
}

class _DepotsState extends State<Depots> {
  String? valueChoose;
  List<String> listItem = [
    "Compte 1", "Compte 2", "Compte 3", "Compte 4", "Compte 5"
  ];
  TextEditingController textEditingController =new TextEditingController();
  int value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(

        title: Text("Dépots",style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 5,top:50),child:
            Text("Solde : ",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white
            ),),),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.only(left:5,top: 20,right: 10),child: Text("XAF $value",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.all(20),
              height: 550,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 40,right: 20,left: 20),child: Text("Entrez le montant que vous souhaitez déposer",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38
                  ),),),
                  Padding(padding: EdgeInsets.only(top:100,left: 15,right: 15),
                    child: TextField(
                      controller: textEditingController,
                      onTap: (){},

                      decoration: InputDecoration(

                          contentPadding: EdgeInsets.only(left: 20,bottom: 30
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                          ),
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: " XAF :",
                          hintStyle: TextStyle(

                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          )

                      ),
                      keyboardType: TextInputType.number,
                    ),),
                  Padding(
                    padding: EdgeInsets.only(top: 70,left: 20,right: 20),
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(textEditingController.text.isNotEmpty){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>PageOne()));
                          }
                        });
                        setState(() {
                          value=int.parse(textEditingController.text);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      child: Text("Entrer",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                      ),),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

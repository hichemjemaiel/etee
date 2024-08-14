import 'package:eteee/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';

class InfoCardBudget extends StatelessWidget {
  const InfoCardBudget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.color1,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.color6,
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],

      ),
      padding: EdgeInsets.only(top:13,bottom:11,left: 16,right: 16),
      child:Row(
          children: [
            Expanded(
              flex: 1,
              child:Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.color10,
                  child: IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(Icons.remove,
                      size: 20,
                    ),
                    color: AppColors.color2,
                  ),
                ),
              ),
            ) ,
            Expanded(
              flex: 3,
              child:Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Title',
                          style:TextStyle(
                            fontSize: 13,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.w600,
                            color: AppColors.color3,

                          )

                      ),
                      SizedBox( height: 5),
                      Text(
                        '05/07/2025 a 12 H 30',
                        style:TextStyle(
                          fontSize: 11,
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.w400,
                          color: AppColors.color3,

                        ),

                      ),
                    ],
                  ),
                ),
              ) ,
            ),
            Expanded(
                flex: 2,
                child:Row(
                  children:[
                    Align(
                      alignment: Alignment.centerLeft,
                      child:Align(
                        child: Text(
                          '-20 000 Fcfa',
                          style:TextStyle(
                            fontSize: 13,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.w600,
                            color: AppColors.color10,

                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        child:SvgPicture.asset('assets/images/arrow-right-svgrepo-com.svg'),



                      ),
                    ),


                  ],
                )
            )
          ]
      ),



    );
  }
}
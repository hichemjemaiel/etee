import 'package:eteee/colors.dart';
import 'package:eteee/widgets/card_type.dart';
import 'package:eteee/widgets/info_card_budget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionCatPage extends StatelessWidget {
  const OptionCatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color1,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 32, left: 28, right: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.color3,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: AppColors.color2,
                  ),
                ),
                Text(
                  'Statistiques',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'montserrat',
                    fontWeight: FontWeight.w600,
                    color: AppColors.color3,
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 50, right: 28),
            width: 250,
            child: Column(
              children: [
                CardType(
                  title: 'Dépenses',
                  amount: 0.0,
                  iconSvg: 'assets/images/cart-alt-1-svgrepo-com.svg',
                  colorBgIcon: AppColors.color5,
                  colorBg: AppColors.color2,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 65),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: AppColors.color7,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'definir un budget',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.color7,
                          fontFamily: 'montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.color2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38),
                ),
              ),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return InfoCardBudget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

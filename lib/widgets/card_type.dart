import 'package:eteee/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';

// ignore: must_be_immutable
class CardType extends StatelessWidget {
  final String title;
  final double amount;
  final String iconSvg;
  final Color colorBgIcon;
  final Color colorBg;
  final Widget widget;

  CardType({
    super.key,
    this.title = '',
    this.amount = 0.0,
    this.iconSvg = '',
    this.colorBgIcon = AppColors.color2,
    this.colorBg = AppColors.color4,
    this.widget = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: colorBg,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 65,
                height: 50,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colorBgIcon,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  iconSvg,
                  color:AppColors.color2,
                  width: 24,
                  height: 24,


                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(

                margin: EdgeInsets.only(left: 8),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.color3,
                          fontFamily: 'montserrat'
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      amount.toString(),
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: AppColors.color3,
                        fontFamily: 'montserrat',

                      ),
                    ),
                    widget,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

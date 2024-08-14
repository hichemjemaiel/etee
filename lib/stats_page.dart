import 'dart:ffi';

import 'package:eteee/acceuil/page7/manage.dart';
import 'package:eteee/colors.dart';
import 'package:eteee/transaction_catg_page.dart';
import 'package:eteee/widgets/card_type.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';


class StatsPage extends StatefulWidget {
  StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {

  final String AccountType = 'Compte courant';
  final String codeAccount = '';
  final String account = '';
  List<String> months = const [
    'Jan',
    'Fév',
    'Mar',
    'Avr',
    'Mai',
    'Juin',
    'Juil',
    'Août',
    'Sep',
    'Oct',
    'Nov',
    'Déc',
  ];

  Map<String, dynamic> categories = {
    'Shopping': [1425.050, AppColors.color5, "assets/images/cart-alt-1-svgrepo-com.svg"],
    'Transport': [1425.050, AppColors.color8, "assets/images/car-svgrepo-com.svg"],
    'Espèce': [1425.050, AppColors.color7, "assets/images/change-coins-cash-money-svgrepo-com.svg"],
    'Epargne': [1425.050, AppColors.color9, "assets/images/building-svgrepo-com.svg"],
    'Soin': [1425.050, AppColors.color10, "assets/images/health-svgrepo-com.svg"],
    'Famille': [1425.050, AppColors.color7, "assets/images/people-group-svgrepo-com.svg"],
  };

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color1,
      body: SingleChildScrollView(
        child: Column(
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


                  IconButton(
                    color:AppColors.color3 ,
                    iconSize: 20,
                    onPressed:() {
                      displayBottomSheet(context);
                    },
                    icon: Icon(Icons.filter_alt),
                  )
                ],
              ),
            ),
            SizedBox(height: 39),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  months.length,
                      (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 60,
                      height: 40,
                      margin: index == 0
                          ? const EdgeInsets.only(left: 28, right: 10)
                          : const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? AppColors.color7
                            : AppColors.color13,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColors.color4,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        months[index],
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.w600,
                          color: selectedIndex == index
                              ? AppColors.color2
                              : AppColors.color3,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.color2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: double.infinity,
                    height: 280,
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(
                          show: false,
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            barWidth: 1.5,
                            color: AppColors.color7,
                            isCurved: true,
                            curveSmoothness: 0.3,
                            preventCurveOverShooting: true,
                            belowBarData: BarAreaData(
                              show: true,
                              color: AppColors.color7.withOpacity(0.3),
                            ),
                            spots: const [
                              FlSpot(0, 3),
                              FlSpot(1, 1),
                              FlSpot(2, 4),
                              FlSpot(3, 2),
                              FlSpot(4, 5),
                              FlSpot(5, 3),
                              FlSpot(6, 4),
                              FlSpot(7, 3),
                              FlSpot(8, 5),
                              FlSpot(9, 2),
                              FlSpot(10, 3),
                              FlSpot(11, 4),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Manage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 11),
                      decoration: BoxDecoration(
                        color: AppColors.color4,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 16, bottom: 16, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gérer mes budgets',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight.w600,
                              color: AppColors.color3,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: SvgPicture.asset(
                              'assets/images/arrow-right-svgrepo-com.svg',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TransactionCatgPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 11),
                      decoration: BoxDecoration(
                        color: AppColors.color4,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 16, bottom: 16, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Transaction à catégoriser',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight.w600,
                              color: AppColors.color3,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: SvgPicture.asset(
                              'assets/images/arrow-right-svgrepo-com.svg',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Text(
                      'Dépenses par catégorie',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.w600,
                        color: AppColors.color3,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: List.generate(
                      categories.length,
                          (index) {
                        String category = categories.keys.elementAt(index);
                        return Container(
                          width: (MediaQuery.of(context).size.width - 60) / 2,
                          child: CardType(

                            title: category,
                            amount: categories[category][0],
                            colorBgIcon: categories[category][1],
                            iconSvg: categories[category][2],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> displayBottomSheet(BuildContext context) {
    // Example data for accounts
    final List<Map<String, String>> accounts = [
      {'type': 'Account Type 1', 'code': '123'},
      {'type': 'Account Type 2', 'code': '456'},
      // Add more accounts here
    ];

    String selectedAccount = ''; // Ensure it's a non-nullable string

    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 400,
                padding: EdgeInsets.only(left: 29, right: 50, top: 29),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Mes comptes',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Cliquez pour choisir le compte à afficher',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),

                        Icon(
                          Icons.check_circle_rounded,
                          color: AppColors.color7, size: 20,
                        )
                      ],
                    ),
                    SizedBox(height: 12),
                    DottedLine(
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashLength: 7,
                      dashColor: Colors.black,
                      dashRadius: 0.0,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                      dashGapRadius: 0.0,
                    ),
                    SizedBox(height: 7),
                    Expanded(
                      child: ListView.builder(
                        itemCount: accounts.length,
                        itemBuilder: (context, index) {
                          final account = accounts[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedAccount = account['code']!;
                                });
                                Navigator.pop(context); // Close bottom sheet on selection
                              },
                              child: ListTile(
                                title: Text(
                                  '${account['type']} | ${account['code']}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),

                                trailing: Radio<String>(
                                  value: account['code']!,
                                  groupValue: selectedAccount,
                                  fillColor: MaterialStateProperty.all(AppColors.color7),
                                  onChanged: (value) {
                                    setState(() {
                                      selectedAccount = value!;
                                      print('Selected account: $selectedAccount');
                                    });
                                  },
                                ),

                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }






}

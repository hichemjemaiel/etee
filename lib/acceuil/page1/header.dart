import 'package:eteee/acceuil/page1/Depots.dart';
import 'package:eteee/acceuil/page1/comptes.dart';
import 'package:eteee/acceuil/page1/retraits.dart';
import 'package:eteee/acceuil/page1/transactions.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  // State variables for animation
  Color _animatedColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Stack(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(""),
                accountEmail: Text(""),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      "images/logo.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                top: 15,
                right: 20,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.close,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          buildListTile(Icons.home_filled, "Tableau de bord"),
          buildExpansionTile(Icons.account_balance_wallet, "Compte"),
          buildExpansionTile2(Icons.account_balance_wallet, "Transactions"),
          SizedBox(height: 400),
          buildListTile(Icons.settings, "Configuration"),
        ],
      ),
    );
  }

  Widget buildListTile(IconData iconData, String title) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _animatedColor = Colors.green; // Change color to green on tap down
        });
      },
      onTapUp: (_) {
        setState(() {
          _animatedColor = Colors.transparent; // Reset color on tap up
        });
      },
      onTapCancel: () {
        setState(() {
          _animatedColor = Colors.transparent; // Reset color on tap cancel
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        color: _animatedColor,
        child: ListTile(
          leading: Icon(iconData),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget buildExpansionTile(IconData iconData, String title) {
    return ExpansionTile(
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      children: [
        buildSubTile(Icons.person, "Mes comptes", Comptes()),
      ],
    );
  }

  Widget buildExpansionTile2(IconData iconData, String title) {
    return ExpansionTile(
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      children: [
        buildSubTile(Icons.history, "Historique des transactions",Transactions()),
        buildSubTile(Icons.compare_arrows, "Mes dépotes",Depots()),
        buildSubTile(Icons.attach_money_rounded, "Mes retraits",Retraits()),
      ],
    );
  }

  Widget buildSubTile(IconData iconData, String title, Widget targetPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      onTapDown: (_) {
        setState(() {
          _animatedColor = Colors.green; // Change color to green on tap down
        });
      },
      onTapUp: (_) {
        setState(() {
          _animatedColor = Colors.transparent; // Reset color on tap up
        });
      },
      onTapCancel: () {
        setState(() {
          _animatedColor = Colors.transparent; // Reset color on tap cancel
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        color: _animatedColor,
        child: ListTile(
          leading: Icon(iconData),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

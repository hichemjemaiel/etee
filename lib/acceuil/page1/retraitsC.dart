import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RetraitsC extends StatefulWidget {
  const RetraitsC({super.key});

  @override
  State<RetraitsC> createState() => _RetraitsCState();
}

class _RetraitsCState extends State<RetraitsC> {
  int _counter = 30;
  late Timer _timer;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  TextEditingController editingController1 = TextEditingController();
  TextEditingController editingController2 = TextEditingController();
  TextEditingController editingController3 = TextEditingController();
  TextEditingController editingController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Check"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 40),
              child: Text(
                "Vérifiez votre Email",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Text(
                    "Nous avons envoyés un code pour",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "helloworld@gmail.com",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildTextField(editingController1),
                  buildTextField(editingController2),
                  buildTextField(editingController3),
                  buildTextField(editingController4),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Vérifier",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        startTimer();
                        _counter = 30;
                      });
                    },
                    child: Text(
                      "Send code",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "$_counter s",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
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

  Widget buildTextField(TextEditingController controller) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TextField(
        controller: controller,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 40, bottom: 80),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

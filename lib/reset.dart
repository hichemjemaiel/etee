import 'package:flutter/material.dart';
import 'package:eteee/login.dart'; // Make sure this path is correct

void main() {
  runApp(MaterialApp(
    home: Reset(),
  ));
}

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  bool _secure = true; // Added to manage password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.star_rate_sharp,
              size: 40,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reset password",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Please type something you'll remember",
              style: TextStyle(
                color: Colors.black38,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              "New password",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 50,
              width: 380,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                obscureText: _secure, // Use _secure for obscureText property
                controller: textEditingController1,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: toggle(),
                  hintText: "Must be 8 characters",
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              "Confirm new password",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 50,
              width: 380,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                obscureText: _secure, // Use _secure for obscureText property
                controller: textEditingController2,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _secure = !_secure;
                      });
                    },
                    child: toggle(),
                  ),
                  hintText: "Repeat password",
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    // Handle password reset logic here
                    if (textEditingController1.text.length == 8 &&
                        textEditingController2.text.length == 8) {
                      // Implement password reset functionality
                    }
                  });
                },
                child: Text(
                  "Reset password",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 150,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black38,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget toggle() {
    return IconButton(
      onPressed: () {
        setState(() {
          _secure = !_secure;
        });
      },
      icon: _secure ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}

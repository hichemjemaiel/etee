import 'package:eteee/colors.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';

import 'colors.dart';

class TransactionCatgPage extends StatefulWidget {
  const TransactionCatgPage({Key? key}) : super(key: key);

  @override
  _TransactionCatgPageState createState() => _TransactionCatgPageState();
}

class _TransactionCatgPageState extends State<TransactionCatgPage> with TickerProviderStateMixin {
  late GifController _controller;
  late Future<bool> _gifFuture;

  @override
  void initState() {
    super.initState();
    _controller = GifController(vsync: this);
    _gifFuture = _loadGif();
  }

  Future<bool> _loadGif() async {
    // Simulate loading delay
    await Future.delayed(const Duration(seconds: 1));
    return true; // Assume GIF loading is successful
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color1,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 32, left: 28, right: 28),
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
                  'Transaction à Catégoriser',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'montserrat',
                    fontWeight: FontWeight.w600,
                    color: AppColors.color3,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
          const SizedBox(height: 60),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.color2,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FutureBuilder<bool>(
                    future: _gifFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text(''); // Show loading indicator
                      } else if (snapshot.hasError) {
                        return const Text('Error loading GIF');
                      } else if (snapshot.hasData && snapshot.data == true) {
                        return Container(
                          width: 200,
                          height: 200,
                          child: Gif(
                            image: AssetImage("assets/video/test.gif"),
                            controller: _controller,
                            autostart: Autostart.no,
                            placeholder: (context) => const Text(''),
                            onFetchCompleted: () {
                              _controller.reset();
                              _controller.forward();
                            },
                          ),
                        );
                      } else {
                        return const Text('');
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Mission accomplie !",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'montserrat',
                      fontWeight: FontWeight.w600,
                      color: AppColors.color3,
                      letterSpacing: -0.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Toutes vos transactions sont désormais catégorisées.\n Vous gérez vos finances comme un professionnel.",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'montserrat',
                      fontWeight: FontWeight.w400,
                      color: AppColors.color3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

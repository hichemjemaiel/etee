
import 'package:eteee/widgets/otpForm.dart';
import 'package:flutter/material.dart';

import '../widgets/otpForm.dart';

class MobileValidatePage extends StatefulWidget {
  const MobileValidatePage({ super.key });

  @override
  State<MobileValidatePage> createState() => _MobileValidatePageState();
}

class _MobileValidatePageState extends State<MobileValidatePage> {
  final GlobalKey<FormState> _mobileFormMobileV = GlobalKey<FormState>();
  final phone = '+00000000';
  final time = '00:30';
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _mobileFormMobileV,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(

                    margin: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                          child: IconButton(

                            onPressed: () {

                            },
                            icon: const Icon(Icons.arrow_back),
                          ),
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/logo.png',
                            scale: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                Text(
                  'Sign Up',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 28),
                RichText(
                  text: TextSpan(
                    text: 'We’ve sent an SMS with an activation code to your phone',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '  ${phone}',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,

                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                OtpForm(),
                const SizedBox(height: 50),
                Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Send code again in ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.tertiary,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '  ${time}',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,

                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
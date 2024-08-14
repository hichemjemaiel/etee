


import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MobilePhone extends StatefulWidget {
  MobilePhone({ super.key });

  @override
  State<MobilePhone> createState() => _MobilePhoneState();
}

class _MobilePhoneState extends State<MobilePhone> {
  final GlobalKey<FormState> _mobileFormMobile = GlobalKey<FormState>();

  void _validateForm() {
    if (_mobileFormMobile.currentState!.validate()) {
      print('Valid form');
    } else {
      print('Invalid form');
    }
  }

  bool status = false;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _mobileFormMobile,
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
                Text(  'Please confirm your country code and\nenter your phone number.',
                  style:  TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
                    decoration: BoxDecoration(
                        color:  Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black.withOpacity(0.13))
                    ),

                    child: Stack(
                      children: [
                        InternationalPhoneNumberInput(
                            onInputChanged: (value) {},
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Phone number is required';
                              }
                              return null;
                            },
                            cursorColor: Colors.black,
                            formatInput: false,
                            selectorConfig: SelectorConfig(
                              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            ),
                            inputDecoration:  InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 10),
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontSize: 16,
                              ),
                            )
                        ),
                        Positioned(
                          right: 90,
                          top: 8,
                          bottom: 8,
                          child: Container(
                            height: 40,
                            width: 1,
                            color: Colors.black.withOpacity(0.13),

                          ),
                        ),

                      ],
                    )
                ),
                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  child: SwitchListTile(

                    title:const  Text(
                      'Sync Contacts',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    activeColor: Colors.white,
                    inactiveThumbColor:Colors.black ,
                    inactiveTrackColor: Colors.white,
                    activeTrackColor: Colors.black,
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value;
                      });
                    },

                  ),
                ),

                const SizedBox(height: 40),

                ElevatedButton(
                  onPressed: _validateForm,
                  child: Text('Continue', style: Theme.of(context).textTheme.displayMedium),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
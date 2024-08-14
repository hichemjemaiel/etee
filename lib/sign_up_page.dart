
import 'package:eteee/colors.dart';
import 'package:eteee/login.dart';
import 'package:eteee/widgets/input_form.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'acceuil/page1/pageone.dart';


class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final List<Map<String, String>> socialMediaIcons = [
    {'name': 'Google', 'asset': 'assets/images/google.svg'},
    {'name': 'Facebook', 'asset': 'assets/images/facebook.svg'},
    {'name': 'Apple', 'asset': 'assets/images/apple.svg'},
  ];

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  String? _confirmPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    } else if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  void _validateForm(BuildContext context) {
    bool isValid = true;
    final emailError = _emailValidator(_emailController.text);
    final passwordError = _passwordValidator(_passwordController.text);
    final confirmPasswordError = _confirmPasswordValidator(_confirmPasswordController.text);

    if (emailError != null) {
      isValid = false;
    }
    if (passwordError != null) {
      isValid = false;
    }
    if (confirmPasswordError != null) {
      isValid = false;
    }

    if (isValid) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageOne()),
      );
    } else {
      print('Form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/logo.png',
                        scale: 13,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                Text(
                  'Sign Up',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 28),
                InputForm(
                  label: "Email",
                  hint: "Enter your email",
                  controller: _emailController,
                  customValidator: _emailValidator,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 8),
                InputForm(
                  label: 'Password',
                  hint: 'Must be at least 8 characters long',
                  controller: _passwordController,
                  customValidator: _passwordValidator,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 8),
                InputForm(
                  label: 'Confirm Password',
                  hint: 'Repeat password',
                  controller: _confirmPasswordController,
                  customValidator: _confirmPasswordValidator,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () => _validateForm(context),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        height: 20,

                        indent: 20,
                        endIndent: 0,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Or Register with',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        height: 20,

                        indent: 0,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(

                    height: 80,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          socialMediaIcons.length,
                              (index) => Container(
                            margin: index == 0
                                ? const EdgeInsets.only(left: 40, right: 10)
                                : const EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Theme.of(context).colorScheme.tertiary,
                                width: 2,
                              ),
                            ),
                            child: IconButton(
                              icon: SvgPicture.asset(
                                socialMediaIcons[index]['asset']!,
                                height: 30,
                                width: 30,
                              ),
                              onPressed: () {

                                print('Icon button $index pressed');
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 50),

                Column(

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Already have an account? ',
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Sign In',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                  recognizer: TapGestureRecognizer()..onTap = () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

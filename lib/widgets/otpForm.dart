import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final List<TextEditingController> _controllers = List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _handleKeyEvent(String value, int index) {
    if (value.isEmpty && index > 0) {
      _focusNodes[index].unfocus();
      _focusNodes[index - 1].requestFocus();
    } else if (value.isNotEmpty && index < _focusNodes.length - 1) {
      _focusNodes[index].unfocus();
      _focusNodes[index + 1].requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textFieldWidth = screenWidth * 0.15;
    double textFieldHeight = screenWidth * 0.15;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, (index) {
        return SizedBox(
          width: textFieldWidth,
          height: textFieldHeight,
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            maxLength: 1,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            onChanged: (value) => _handleKeyEvent(value, index),
            style:  TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily:  'popins'
            ),
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
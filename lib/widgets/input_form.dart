import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  final String label;
  final String hint;
  final EdgeInsets margin;
  final double height;
  final double borderRadius;
  final Color colorBorder;
  final double borderWidth;
  final GlobalKey<FormState>? formKey;
  final String? Function(String?)? customValidator;
  final TextEditingController controller;
  final Icon?  prefixIcon;
  final TextInputType keyboardType;
  final  Color fillColor ;

  const InputForm({
    Key? key,
    required this.label,
    this.formKey,
    this.margin = const EdgeInsets.all(0),
    this.height = 50,
    this.hint = '',
    this.borderRadius = 8,
    this.colorBorder = const Color.fromARGB(121, 105, 104, 104),
    this.borderWidth = 1.0,
    this.customValidator,
    required this.controller,
    this. prefixIcon,
    this.keyboardType = TextInputType.text,
    this.fillColor = Colors.white,
  }) : super(key: key);

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  String? _errorMessage;

  void _updateErrorMessage(String? message) {
    setState(() {
      _errorMessage = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 7),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 2),
            alignment: Alignment.centerLeft,
            height: widget.height,
            decoration: BoxDecoration(
              color: widget.fillColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              border: Border.all(
                color: widget.colorBorder,
                width: widget.borderWidth,
              ),
            ),
            child: Padding(

              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                  hintText: widget.hint,
                  border: InputBorder.none,
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  prefixIcon: widget. prefixIcon,
                ),
                keyboardType: widget.keyboardType,
                onChanged: (value) {
                  if (widget.customValidator != null) {
                    final errorMessage = widget.customValidator!(value);
                    _updateErrorMessage(errorMessage);
                  }

                },
              ),
            ),
          ),
          if (_errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                _errorMessage!,
                style: const TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}

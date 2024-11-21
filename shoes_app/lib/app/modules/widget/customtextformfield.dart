
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
  });

  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  void _tooglevisibility(){
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:25),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        obscureText: _isObscured,
        decoration: InputDecoration(
          label: Text(
            widget.label,
            style: TextStyle(color: Color(0xffC0C0C0)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color(0xffC0C0C0))
          ),
          suffixIcon: widget.obscureText
            ? IconButton(
              icon:Icon(
                _isObscured ? Icons.visibility : Icons.visibility_off,
                color: Color(0xffC0C0C0),
              ),
              onPressed: _tooglevisibility,
            )
          : null,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputBox extends StatelessWidget {
  const InputBox({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: GoogleFonts.rubik(color: Colors.black),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        filled: true,
        fillColor: Colors.white,
        // fillColor: Color(0xFFE0E0E0),
        hintText: hintText,
      ),
    );
  }
}

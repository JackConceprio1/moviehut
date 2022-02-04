import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    Key? key,
    required this.text,
    required this.color,
    required this.isClickable,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Color color;
  final bool isClickable;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue,
      ),
      child: Center(
        child: Text(
          "Login",
          style: GoogleFonts.rubik(color: Colors.white),
        ),
      ),
    );
  }
}

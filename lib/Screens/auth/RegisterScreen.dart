import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviehut/widgets/ContainerButton.dart';
import 'package:moviehut/widgets/InputBox.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FBFC),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "MovieHut",
                style: GoogleFonts.rubik(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1D1E33),
                ),
              ),
              const SizedBox(height: 100.0),
              const InputBox(
                hintText: "Enter your Name",
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
              const SizedBox(height: 12),
              const InputBox(
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
              const SizedBox(height: 12),

              const InputBox(
                hintText: "Enter your password",
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              const SizedBox(height: 6),
              // aline the button right
              const SizedBox(height: 12),
              const ContainerButton(
                text: "Register",
                color: Colors.blue,
                isClickable: true,
                onPressed: null,
              ),
              const SizedBox(height: 24),
              Text(
                "Already have an account? Login",
                style: GoogleFonts.rubik(),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

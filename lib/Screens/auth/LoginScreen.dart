import 'package:flutter/material.dart';
// add google fonts
import 'package:google_fonts/google_fonts.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);


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
              Text("MovieHut", style: GoogleFonts.rubik(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1D1E33),
              
              ),),
              const SizedBox(height: 100.0),
              const InputBox(hintText: "Enter your email" , 
              keyboardType: TextInputType.emailAddress, 
              obscureText: false,),
              const SizedBox(height: 12),
        
              const InputBox(
                hintText: "Enter your password",
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              const SizedBox(height: 6),
              // aline the button right
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: null, child: Text("Forgot Password?", style: GoogleFonts.rubik(),)),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                ),
                child: Center(child: Text("Login",style: GoogleFonts.rubik(color: Colors.white),),),),
        
              const SizedBox(height: 24),
              Text("Don't have an account? Sign up",style: GoogleFonts.rubik(),),
              const SizedBox(height: 24),
              
              
        
            ],
          ),
        ),
      ),
    );
    
  }
}

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
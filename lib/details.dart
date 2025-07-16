import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_screen_quote_app/model.dart';

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    final Quote detail = ModalRoute.of(context)!.settings.arguments as Quote;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 450,
          width: 450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${detail.quote}",
                style: GoogleFonts.eagleLake(fontSize: 18),
              ),
              Text(
                "${detail.author}",
                style: GoogleFonts.eagleLake(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

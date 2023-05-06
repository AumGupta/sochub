import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BoldText extends StatelessWidget {
  String text;
  double size;
  BoldText({Key? key,
    required this.text,
    this.size = 24}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SemiBoldText extends StatelessWidget {
  String text;
  double size;
  SemiBoldText({Key? key,
    required this.text,
    this.size = 18}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: size,
        ),
      ),
    );
  }
}

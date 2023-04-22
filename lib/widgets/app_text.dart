import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  String text;
  final double size;
  final Color color;
  AppText({Key? key,
    required this.text,
    this.color = Colors.black,
    this.size = 13}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: size,
          color: color,
        ),
      ),
    );
  }
}
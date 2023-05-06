import 'package:flutter/material.dart';
import 'package:sochub/widgets/app_text.dart';
import 'dart:convert';

class ProfileUpdate extends StatelessWidget {
  String text;
  String image;
  ProfileUpdate({Key? key,
    required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: MemoryImage(base64Decode(image))
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          height: 75.0,
          width: 75.0,
        ),
        const SizedBox(height: 10,),
        AppText(text: text, color: Colors.white,),
      ]
    );
  }
}

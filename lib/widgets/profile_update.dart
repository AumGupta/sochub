import 'package:flutter/material.dart';
import 'package:sochub/widgets/app_text.dart';

class ProfileUpdate extends StatelessWidget {
  String text;
  ProfileUpdate({Key? key,
    required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.red,
          ),
          height: 75.0,
          width: 75.0,
        ),
        const SizedBox(height: 10,),
        AppText(text: "Profile $text", color: Colors.white,),
      ]
    );
  }
}

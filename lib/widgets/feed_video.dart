import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sochub/widgets/app_text.dart';
import 'package:sochub/widgets/semi_bold_text.dart';
import 'package:sochub/widgets/bold_text.dart';
import 'package:google_fonts/google_fonts.dart';


class FeedVideo extends StatelessWidget {
  String eventName;
  String organizerName;
  String image;
  String organizerLogo;
  int registrationPrice;
  int prizePool;
  FeedVideo({Key? key,
    required this.eventName,
    required this.organizerName,
    required this.organizerLogo,
    required this.image,
    required this.registrationPrice,
    required this.prizePool,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 660,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: MemoryImage(base64Decode(organizerLogo))
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                        eventName,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          ),
                        ),
                      ),
                          AppText(text: organizerName),
                        ],
                      ),
                    ),
                  ],
                ),

                IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.more_vert_rounded,
                    size: 32,
                  ),
                  color: Colors.grey,
                ),

              ],
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: MemoryImage(base64Decode(image)),
                  fit: BoxFit.contain,
                ),
                color: Colors.black,
              ),
              height: 480,
            ),
            // footer
            Container(
              padding: const EdgeInsets.all(10),
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(
                    Icons.emoji_events_rounded,
                    size: 42,
                    color: Color(0xFF696969),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SemiBoldText(text: "₹$prizePool",),
                      AppText(text: "Prize Pool", size: 10, color: Colors.grey,),
                    ],
                  ),

                  const VerticalDivider(
                    width: 2,
                    color: Color(0xFFEAEAEA),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SemiBoldText(text: "₹$registrationPrice",),
                      AppText(text: "Registration", size: 10, color: Colors.grey,),
                    ],
                  ),

                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0066FF),
                        foregroundColor: Colors.white,
                        elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: SemiBoldText(text: "Register"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

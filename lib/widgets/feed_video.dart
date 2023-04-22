import 'package:flutter/material.dart';
import 'package:sochub/widgets/app_text.dart';
import 'package:sochub/widgets/semi_bold_text.dart';
import 'package:sochub/widgets/bold_text.dart';

class FeedVideo extends StatelessWidget {
  const FeedVideo({Key? key}) : super(key: key);

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
        height: 720,
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
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BoldText(text: "Event Name",),
                        AppText(text: "Organiser Name"),
                      ],
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
                      SemiBoldText(text: "₹7,000",),
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
                      SemiBoldText(text: "₹49",),
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

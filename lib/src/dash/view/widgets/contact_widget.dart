import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6zoRR_FPG7f2knECoYTgOuETejMYPg71vg&s"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "name",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
                Text(
                  "phone number",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

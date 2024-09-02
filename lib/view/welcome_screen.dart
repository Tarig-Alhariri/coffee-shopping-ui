import 'package:coffee_app/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 80),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg.png',
            ),
            fit: BoxFit.cover,
            opacity: .6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Coffee Shop",
                style: GoogleFonts.pacifico(
                  fontSize: 50,
                  color: Colors.white,
                )),
            Column(
              children: [
                Text(
                  "Feeling Low? Take a Sip of Coffee",
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, letterSpacing: 1),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFE57734)),
                  child: InkWell(
                    onTap: () {
                      Get.to(HomeScreen());
                    },
                    child: Text(
                      "Get Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          letterSpacing: 1),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

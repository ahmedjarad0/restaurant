import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPag extends StatelessWidget {
  const OnboardingPag({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String image;

  final String title;

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/$image.png',height:300 ,),
        SizedBox(
          height: 22,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Text(
                title,
                style:
                    GoogleFonts.abel(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.actor(
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

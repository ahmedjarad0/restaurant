import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, 'on_boarding_screen');
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
               begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
              Color(0xff7286D3),
              Color(0xffB6EADA),
            ]
          )
        ),
        child: Text('UI App',style: GoogleFonts.almarai(
          fontSize: 26,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}

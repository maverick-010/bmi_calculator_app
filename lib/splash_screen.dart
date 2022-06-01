import 'package:bmi_calculator_app/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 8),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 400,width: 3000,
            child: Lottie.network("https://assets3.lottiefiles.com/packages/lf20_3ejhEJ/over/data.json"),)
          ],
        ),
      ),
    );
  }
}

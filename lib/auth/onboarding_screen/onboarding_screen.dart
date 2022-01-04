import 'package:flutter/material.dart';
import 'package:meditation_app/auth/login_screen/login_screen.dart';
import 'package:meditation_app/auth/sign_up_screen/sign_up_screen.dart';
import 'package:meditation_app/constants/size_config.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor:const Color(0xff253334),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/splash/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: getProportionScreenHeight(
                350.0,
              ),
              width: getProportionScreenWidth(359),
              child: Image.asset(
                "assets/onboarding/logo.png",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: getProportionScreenHeight(34.0),
              ),
            ),
            Text(
              "Do meditation. Stay focused",
              style: TextStyle(fontSize: getProportionScreenHeight(20.0),),
            ),
             Text(
              "Live a healthy life",
              style: TextStyle(
                fontSize: getProportionScreenHeight(20.0),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  getProportionScreenWidth(321),
                  getProportionScreenHeight(61),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                primary: const Color.fromRGBO(124, 154, 146, 1),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child:  Text(
                "Login with email",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionScreenHeight(25.0),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  "Don't have an account",
                  style: TextStyle(
                    fontSize: getProportionScreenHeight(20.0),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child:  Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize:getProportionScreenHeight(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

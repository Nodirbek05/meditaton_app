import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meditation_app/auth/login_screen/login_screen.dart';
import 'package:meditation_app/constants/size_config.dart';
import 'package:meditation_app/screens/main_screen/main_screen.dart';
import 'package:meditation_app/services/sign_up_service.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor:const Color(0xff253334),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(
          top: 
          getProportionScreenHeight(20.0),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment(0, 1),
            scale: 0.1,
            image: AssetImage("assets/login/barg.png"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/login/logo.png"),
              SizedBox(
                height: getProportionScreenHeight(25.0),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: getProportionScreenHeight(30),
                ),
              ),
              SizedBox(
                height: getProportionScreenHeight(10.0),
              ),
              Text(
                "Sign up now for free and start",
                style: TextStyle(
                  fontSize: getProportionScreenHeight(22),
                ),
              ),
              Text(
                "meditating, and explore Medic.",
                style: TextStyle(
                  fontSize: getProportionScreenHeight(22),
                ),
              ),
              SizedBox(
                height: getProportionScreenHeight(35.0),
              ),
              Form(
                key: SignUpService().form_key,
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 18),
                      controller: SignUpService().nameController,
                      decoration: const InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromRGBO(190, 194, 194, 1)),
                      ),
                      validator: (e) {
                        if (e!.length < 3) {
                          return "login uzunligi 3 tadan kam bomasin";
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 18),
                        controller: SignUpService().emailController,
                        decoration: const InputDecoration(
                          hintText: "Email Address",
                          hintStyle: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromRGBO(190, 194, 194, 1)),
                        ),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: getProportionScreenHeight(18),
                      ),
                      controller: SignUpService().passwordController,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromRGBO(190, 194, 194, 1)),
                      ),
                      validator: (e) {
                        if (e!.length < 3) {
                          return "parol uzunligi 3 ta dan kam bo'lmasin";
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionScreenHeight(30.0),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    getProportionScreenWidth(321),
                    getProportionScreenHeight(61),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        getProportionScreenHeight(10),
                      ),
                    ),
                  ),
                  primary: const Color.fromRGBO(124, 154, 146, 1),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionScreenHeight(25),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionScreenHeight(5.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: getProportionScreenHeight(18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: getProportionScreenHeight(18),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

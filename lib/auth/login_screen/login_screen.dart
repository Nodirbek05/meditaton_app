import 'package:flutter/material.dart';
import 'package:meditation_app/auth/sign_up_screen/sign_up_screen.dart';
import 'package:meditation_app/constants/size_config.dart';
import 'package:meditation_app/constants/theme_const.dart';
import 'package:meditation_app/screens/main_screen/main_screen.dart';
import 'package:meditation_app/services/login_service.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor:const Color(0xff253334),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                padding: EdgeInsets.all(
                  getProportionScreenHeight(36),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/login/logo.png"),
                    SizedBox(
                      height: getProportionScreenHeight(25.0),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: getProportionScreenHeight(30),
                      ),
                    ),
                    SizedBox(
                      height: getProportionScreenHeight(10.0),
                    ),
                    Text(
                      "Sign in now to access your",
                      style: TextStyle(
                        fontSize: getProportionScreenHeight(22),
                      ),
                    ),
                    Text(
                      "exercises and saved music.",
                      style: TextStyle(
                        fontSize: getProportionScreenHeight(22),
                      ),
                    ),
                    SizedBox(
                      height: getProportionScreenHeight(35.0),
                    ),
                    Form(
                      key: LoginService().form_key,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24.0),
                            child: TextFormField(
                              style: const TextStyle(fontSize: 18),
                              controller: LoginService().emailController,
                              decoration: InputDecoration(
                                hintText: "Email Address",
                                hintStyle: TextStyle(
                                  fontSize: getProportionScreenHeight(18),
                                  color: Color.fromRGBO(190, 194, 194, 1),
                                ),
                              ),
                              validator: (e) {
                                if (e!.length < 3) {
                                  return "email xato";
                                }
                              },
                            ),
                          ),
                          TextFormField(
                            style: const TextStyle(fontSize: 18),
                            controller: LoginService().passwordController,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontSize: getProportionScreenHeight(18),
                                  color: Color.fromRGBO(190, 194, 194, 1)),
                            ),
                            validator: (e) {
                              if (e != "12345") {
                                return "parol xato";
                              }
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                    color: Color.fromRGBO(190, 194, 194, 1),
                                  ),
                                ),
                              ),
                            ],
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
                        "LOGIN",
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
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: getProportionScreenHeight(18),
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
                          child: Text(
                            "Sign Up",
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
          ],
        ),
      ),
    );
  }
}

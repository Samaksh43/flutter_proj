import 'package:flutter/material.dart';
import 'package:flutter_project2/Screens/loginScreen.dart';
import 'package:flutter_project2/Screens/signupScreen.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import 'package:flutter_project2/utils/animcatalog.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = "/landingScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(

          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: Stack(
            children: [

              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  Helper.getAssetName("bglogo.jpeg", "virtual"),
                  fit: BoxFit.cover,
                ),
              ),


              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context) * 0.3,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.orange,
                            ),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(
                                side:
                                BorderSide(color: AppColor.blue, width: 1.5),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(LoginScreen.routeName);
                          },
                          child: Text("Login"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.orange,
                            ),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(
                                side:
                                BorderSide(color: AppColor.blue, width: 1.5),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);
                          },

                          child: Text("Sign up"),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

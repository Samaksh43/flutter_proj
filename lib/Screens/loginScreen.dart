import 'package:flutter/material.dart';
import 'package:flutter_project2/Screens/HomeScreen.dart';
import 'package:flutter_project2/Screens/myprofile.dart';
import '../screens/signupScreen.dart';
import '../const/colors.dart';
import '../screens/forgotpwscreen.dart';
import '../utils/helper.dart';
import 'package:flutter_project2/Screens/IntroScreen.dart';
import 'package:flutter_project2/utils/p.dart';
import 'package:flutter_project2/Screens/IntroScreen.dart';
import 'package:flutter_project2/utils/animcatalog.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
  Color customBlackColor = const Color.fromARGB(255, 53, 53, 53);
  Color customWhiteColor = const Color.fromARGB(255, 237, 237, 237);

}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),

            child: Column(
              children: [
                Image.asset(
                  Helper.getAssetName("vector1.png", "virtual")
                ),

                Spacer(),

                const TextField(
                  decoration: InputDecoration(
                  hintText: "enter your mail",
                ),
                ),
                const Spacer(),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "enter your password",
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          transitionsBuilder: (context,animation,animationTime,child){
                            animation= CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                            return ScaleTransition(
                              alignment: Alignment.center,
                              scale: animation,
                              child: child,
                            );
                          },
                          pageBuilder: (context, animation,animationTime){
                            return IntroScreen();
                          },
                        ),
                      );
                    },
                    child: Text('login'),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ForgetPwScreen.routeName);
                  },
                  child: Text("Forget your password?"),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(p.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Don't have an Account?"),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColor.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
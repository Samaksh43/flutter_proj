import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../screens/loginScreen.dart';
import '../utils/helper.dart';
import 'package:flutter_project2/utils/ProfileInfo.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    Helper.getAssetName("vector3.png", "virtual")
                  ),
                  Spacer(),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter your Name",
                    ),
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter your mail",
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter your Number",
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(ProfileInfo.routeName);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.orange,
                        ),
                      ),
                      child: const Text("Sign Up"),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(LoginScreen.routeName);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an Account?"),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: AppColor.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
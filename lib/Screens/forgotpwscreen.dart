import 'package:flutter/material.dart';
import 'package:flutter_project2/Screens/loginScreen.dart';
import '../utils/helper.dart';
import 'package:flutter_project2/Screens/sentOTPScreen.dart';

class ForgetPwScreen extends StatelessWidget {
  static const routeName = "/restpwScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Reset Password",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  "Please enter your email to recieve a link to create a new password via email",
                  textAlign: TextAlign.center,
                ),
                Spacer(flex: 2),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter your mail",
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(SendOTPScreen.routeName);
                    },
                    child: Text("Send"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
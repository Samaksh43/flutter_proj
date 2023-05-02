import 'package:flutter/material.dart';
import 'package:flutter_project2/Screens/myprofile.dart';
import 'package:flutter_project2/Screens/HomeScreen.dart';
import '../utils/helper.dart';

class NewPwScreen extends StatelessWidget {
  static const routeName = "/NewPwScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("New Password", style: Helper.getTheme(context).headline6),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please enter your email to recieve a link to create a new password via email",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter your mail",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter your mail",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomeScreen.routeName);
                    },
                    child: Text("Next"),
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
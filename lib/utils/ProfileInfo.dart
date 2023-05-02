import 'package:flutter/material.dart';
import 'package:flutter_project2/const/colors.dart';
import 'package:flutter_project2/utils/helper.dart';
import 'package:flutter_project2/utils/CustomNavBar.dart';

class ProfileInfo extends StatelessWidget {
  static const routeName = "/profileInfo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
                            style: Helper.getTheme(context).headline5,
                          ),
                          Image.asset(
                            Helper.getAssetName("cart.png", "virtual"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ClipOval(
                        child: Stack(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                Helper.getAssetName(
                                  "user.png",
                                  "real",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 20,
                                width: 80,
                                color: Colors.black.withOpacity(0.3),
                                child: Image.asset(Helper.getAssetName(
                                    "ph6.jpg", "real")),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Edit Profile",
                            style: TextStyle(color: AppColor.blue),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hi there Emilia!",
                        // style: Helper.getTheme(context).headline4.copyWith(
                        //   color: AppColor.primary,
                        // ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "enter your password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "enter your password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "enter your password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "enter your password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "enter your password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "enter your password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Save"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

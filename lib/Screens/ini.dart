import 'package:flutter/material.dart';
import '../utils/helper.dart';
import 'package:flutter_project2/Screens/landingScreen.dart';
class ini extends StatelessWidget {
  static const routeName = "/ini";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image.asset(
                      Helper.getAssetName("inibg.jpeg", "virtual"),
                      fit: BoxFit.cover,
                    ),
                  ),
              ),

              Align(
                alignment: Alignment.center,
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context) * 0.3,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                          "Welcome to",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      Text(
                        "Foodster ",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        )
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width:250,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.orange,
                            ),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(
                                side:
                                BorderSide(color: Colors.orange, width: 1.5),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
                          },
                          child: Text("Lets get started"),
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

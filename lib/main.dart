// @dart=2.9
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project2/Screens/loginScreen.dart';
import 'package:flutter_project2/Screens/newPwScreen.dart';
import 'package:flutter_project2/Screens/signupScreen.dart';
import 'package:flutter_project2/const/colors.dart';
import 'package:flutter_project2/Screens/spashScreen.dart';
import './Screens/landingScreen.dart';
import 'package:flutter_project2/Screens/sentOTPScreen.dart';
import 'package:flutter_project2/Screens/forgotpwscreen.dart';
import 'package:flutter_project2/Screens/myprofile.dart';
import 'package:flutter_project2/Screens/ini.dart';
import 'package:flutter_project2/Screens/HomeScreen.dart';
import 'package:flutter_project2/Screens/IntroScreen.dart';
import 'package:flutter_project2/utils/ProfileInfo.dart';
import 'package:flutter_project2/Screens/IndividualItem.dart';
import 'package:flutter_project2/utils/p.dart';
import 'package:flutter_project2/utils/catalog.dart';
import 'package:flutter_project2/utils/desert.dart';
import 'package:flutter_project2/utils/animcatalog.dart';
import 'package:flutter_project2/utils/lastpage.dart';
import 'package:flutter_project2/utils/OfferPage.dart';
import 'package:flutter_project2/utils/animcatalog1.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
      List _items = [];

      // fetch content from the json file
      Future<void> readJson() async{
        final String response = await rootBundle.loadString('assets/sample.json');
        final data= await json.decode(response);
        setState((
        {
          _items = data["items"],
        }
        ));
      }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.blue,
            ),
            // elevation: MaterialStateProperty.all(0),
          ),
        ),
        textTheme:
           const TextTheme(
          ),
      ),
      home: SplashScreen(),
      routes:{
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgetPwScreen.routeName: (context) => ForgetPwScreen(),
        SendOTPScreen.routeName: (context)=> SendOTPScreen(),
        NewPwScreen.routeName: (context)=> NewPwScreen(),
        MyProfile.routeName: (context)=> MyProfile(),
        ini.routeName: (context)=> ini(),
        HomeScreen.routeName: (context)=> HomeScreen(),
        IntroScreen.routeName: (context)=> IntroScreen(),
        ProfileInfo.routeName: (context)=> ProfileInfo(),
        Individual.routeName: (context)=> Individual(),
        p.routeName: (context)=> p(),
        desert.routeName: (context)=> desert(),
        catalog.routeName: (context)=> catalog(),
        animcatalog.routeName: (context)=> animcatalog(),
        lastpage.routeName: (context)=> lastpage(),
       OffersPage.routeName: (context)=> OffersPage(),
      },
    );
  }

  void setState(Set set) {}
}



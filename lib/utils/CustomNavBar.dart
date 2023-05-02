// import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../screens/homeScreen.dart';
import '../screens/loginScreen.dart';
import '../utils/helper.dart';
import 'package:flutter_project2/utils/ProfileInfo.dart';
import 'package:flutter_project2/utils/CustomNavBar.dart';
import 'package:flutter_project2/utils/catalog.dart';
import 'package:flutter_project2/utils/OfferPage.dart';

class CustomNavBar extends StatelessWidget {
  final bool home;
  final bool menu;
  final bool offer;
  final bool profile;
  final bool more;

  const CustomNavBar(
      {
        this.home = false,
        this.menu = false,
        this.offer = false,
        this.profile = false,
        this.more = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            // child: ClipShadow(
            //   boxShadow: [
            //     BoxShadow(
            //       color: AppColor.placeholder,
            //       offset: Offset(
            //         0,
            //         -5,
            //       ),
            //       blurRadius: 10,
            //     ),
            //   ],
            //   clipper: CustomNavBarClipper(),
              child: Container(
                height: 50,
                width: Helper.getScreenWidth(context),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!menu) {
                          Navigator.of(context)
                              .pushReplacementNamed(catalog.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          menu
                              ? Image.asset(
                            Helper.getAssetName(
                                "more_filled.png", "real"),
                          )
                              : Image.asset(
                            Helper.getAssetName("more.png", "real"),
                          ),
                          menu
                              ? Text("Menu",
                              style: TextStyle(color: AppColor.blue))
                              : Text("Menu"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!offer) {
                          Navigator.of(context)
                              .pushReplacementNamed(OffersPage.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          offer
                              ? Image.asset(
                            Helper.getAssetName(
                                "bag_filled.png", "real"),
                          )
                              : Image.asset(
                            Helper.getAssetName("bag.png", "real"),
                          ),
                          offer
                              ? Text("Offers",
                              style: TextStyle(color: AppColor.blue))
                              : Text("Offers"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!profile) {
                          Navigator.of(context).pushReplacementNamed(ProfileInfo.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          profile
                              ? Image.asset(
                            Helper.getAssetName(
                                "user_filled.png", "real"),
                          )
                              : Image.asset(
                            Helper.getAssetName("user.png", "real"),
                          ),
                          profile
                              ? Text("Profile",
                              style: TextStyle(color: AppColor.blue))
                              : Text("Profile"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!more) {
                          Navigator.of(context)
                              .pushReplacementNamed(LoginScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          more
                              ? Image.asset(
                            Helper.getAssetName(
                                "menu_filled.png", "real"),
                          )
                              : Image.asset(
                            Helper.getAssetName("menu.png", "real"),
                          ),
                          more
                              ? Text("Profile",
                              style: TextStyle(color: AppColor.blue))
                              : Text("More"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}




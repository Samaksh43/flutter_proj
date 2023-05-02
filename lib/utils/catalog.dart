import 'package:flutter/material.dart';
import 'package:flutter_project2/Screens/HomeScreen.dart';

import '../const/colors.dart';
import 'CustomNavBar.dart';
import 'helper.dart';
import 'package:flutter_project2/utils/desert.dart';
import 'package:flutter_project2/utils/animcatalog.dart';
import 'package:flutter_project2/utils/animcatalog1.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class catalog extends StatelessWidget {
  static const routeName="/catalog";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Menu",
                        style: Helper.getTheme(context).headline5,
                      ),
                      Image.asset(
                        Helper.getAssetName("cart_white.png", "real"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: Helper.getScreenHeight(context) * 0.6,
                    width: Helper.getScreenWidth(context),
                    child: Stack(
                      children: [
                        Container(
                          height: double.infinity,
                          width: 100,
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              color: AppColor.blue),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(animcatalog.routeName);
                                },
                                child: MenuCard(
                                  imageShape: ClipPath(

                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset(
                                        Helper.getAssetName(
                                            "p1.jpg", "real"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  name: "Desserts",
                                  count: "135",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(animcatalog1.routeName);
                                },
                                child: MenuCard(
                                  imageShape: ClipPath(

                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset(
                                        Helper.getAssetName(
                                            "ph1.jpg", "real"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  name: "Desserts",
                                  count: "135",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(animcatalog.routeName);
                                },
                                child: MenuCard(
                                  imageShape: ClipPath(

                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset(
                                        Helper.getAssetName(
                                            "ph6.jpg", "real"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  name: "Desserts",
                                  count: "135",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(animcatalog1.routeName);
                                },
                                child: MenuCard(
                                  imageShape: ClipPath(

                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset(
                                        Helper.getAssetName(
                                            "ph8.jpg", "real"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  name: "Desserts",
                                  count: "135",
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              menu: true,
            ),
          )
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    required String name,
    required String count,
    required Widget imageShape,
  })  : _name = name,
        _count = count,
        _imageShape = imageShape;


  final String _name;
  final String _count;
  final Widget _imageShape;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 80,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.placeholder,
                offset: Offset(0, 5),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _name,

              ),
              SizedBox(
                height: 5,
              ),
              Text("$_count items")
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerLeft,
            child: _imageShape,
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      color: AppColor.placeholder,
                      offset: Offset(0, 2),
                      blurRadius: 5,
                    )
                  ]),
              child: Image.asset(
                Helper.getAssetName("next_filled.png", "virtual"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

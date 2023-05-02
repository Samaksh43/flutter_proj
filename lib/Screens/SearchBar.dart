import 'package:flutter/material.dart';
import 'package:flutter_project2/utils/helper.dart';
import 'package:flutter_project2/const/colors.dart';
import 'package:flutter_project2/Screens/HomeScreen.dart';

class SearchBar extends StatelessWidget {
  static const routeName="/SearchBar";
  final String title;
  SearchBar({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: AppColor.placeholderBg,
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Image.asset(
              Helper.getAssetName("search_filled.png", "real"),
            ),
            hintText: title,
            hintStyle: TextStyle(
              color: AppColor.placeholder,
              fontSize: 18,
            ),
            contentPadding: const EdgeInsets.only(
              top: 17,
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class Review extends StatelessWidget {
  static const routeName="/Review";
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Review Cart",
          style: TextStyle(fontSize: 18 ),
        )
      ),
    );
  }
}

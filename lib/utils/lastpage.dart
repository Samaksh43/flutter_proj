import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_project2/Screens/IndividualItem.dart';

class lastpage extends StatefulWidget {
  static const routeName="/latepage";

  @override
  State<lastpage> createState() => _lastpageState();
}

class _lastpageState extends State<lastpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_HBXF2O.json"),
      ),
    );
  }
}

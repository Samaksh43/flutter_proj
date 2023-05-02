import 'package:flutter/material.dart';
import 'package:flutter_project2/Screens/signupScreen.dart';
import 'package:lottie/lottie.dart';
import '../const/colors.dart';
import '../utils/CustomNavBar.dart';
import '../utils/helper.dart';
import 'IntroScreen.dart';
import 'package:flutter_project2/utils/lastpage.dart';

class Individual extends StatefulWidget {
  static const routeName = "/Individual";

  @override
  State<Individual> createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  int _counter = 0;
  int _count= 750;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
 void _incost(){
    setState(() {
      _count+750;
    });
 }
  void _dncost(){
    setState(() {
      _count-750;
    });
  }
  void _deincrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: Helper.getScreenHeight(context) * 0.5,
                          width: Helper.getScreenWidth(context),
                          child: Image.asset(
                            Helper.getAssetName("ph3.jpeg", "real"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: Helper.getScreenHeight(context) * 0.5,
                          width: Helper.getScreenWidth(context),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.0, 0.4],
                              colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.0),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SafeArea(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                Image.asset(
                                  Helper.getAssetName(
                                      "cart_white.png", "real"),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Helper.getScreenHeight(context) * 0.35,
                          ),
                          SizedBox(
                            height: 800,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Container(
                                    height: 700,
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30),
                                    decoration: const ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40),
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Tandoori Chicken Pizza",
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Image.asset(
                                                      Helper.getAssetName("star_filled.png", "real"),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Image.asset(
                                                    Helper.getAssetName("star_filled.png", "real"),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Image.asset(
                                                    Helper.getAssetName("star_filled.png", "real"),
                                                  ),

                                                  Image.asset(
                                                    Helper.getAssetName("star_filled.png", "real"),
                                                  ),
                                                  ],
                                                  ),
                                                  Text(
                                                    "4 Star Ratings",
                                                    style: TextStyle(
                                                      color: AppColor.blue,
                                                      fontSize: 12,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                                  children: [
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      '$_count',
                                                      style: TextStyle(
                                                        color: AppColor.primary,
                                                        fontSize: 30,
                                                        fontWeight:
                                                        FontWeight.w700,
                                                      ),
                                                    ),
                                                    Text("/per Item")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Description",
                                            // style: Helper.getTheme(context)
                                            //     .headline4
                                            //     .copyWith(
                                            //   fontSize: 16,
                                            // ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Divider(
                                            color: AppColor.placeholder,
                                            thickness: 1.5,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Customize your Order",

                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.symmetric(
                                        //       horizontal: 20),
                                        //   child: Container(
                                        //     height: 50,
                                        //     width: double.infinity,
                                        //     padding: const EdgeInsets.only(
                                        //         left: 30, right: 10),
                                        //     decoration: ShapeDecoration(
                                        //       shape: RoundedRectangleBorder(
                                        //         borderRadius:
                                        //         BorderRadius.circular(5),
                                        //       ),
                                        //       color: AppColor.placeholderBg,
                                        //     ),
                                        //     child: DropdownButtonHideUnderline(
                                        //       child: DropdownButton(
                                        //         hint: Row(
                                        //           children: [
                                        //             Text(
                                        //                 "-Select the size of portion-"),
                                        //           ],
                                        //         ),
                                        //         value: "default",
                                        //         onChanged: (_) {},
                                        //         items: [
                                        //           DropdownMenuItem(
                                        //             child: Text(
                                        //                 "-Select the size of portion-"),
                                        //             value: "default",
                                        //           ),
                                        //         ],
                                        //         icon: Image.asset(
                                        //           Helper.getAssetName(
                                        //             "dropdown.png",
                                        //             "real",
                                        //           ),
                                        //         ),
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.symmetric(
                                        //       horizontal: 20),
                                        //   child: Container(
                                        //     height: 50,
                                        //     width: double.infinity,
                                        //     padding: const EdgeInsets.only(
                                        //         left: 30, right: 10),
                                        //     decoration: ShapeDecoration(
                                        //       shape: RoundedRectangleBorder(
                                        //         borderRadius:
                                        //         BorderRadius.circular(5),
                                        //       ),
                                        //       color: AppColor.placeholderBg,
                                        //     ),
                                        //     child: DropdownButtonHideUnderline(
                                        //       child: DropdownButton(
                                        //         hint: Row(
                                        //           children: [
                                        //             Text(
                                        //                 "-Select the ingredients-"),
                                        //           ],
                                        //         ),
                                        //         value: "default",
                                        //         onChanged: (_) {},
                                        //         items: [
                                        //           DropdownMenuItem(
                                        //             child: Text(
                                        //                 "-Select the ingredients-"),
                                        //             value: "default",
                                        //           ),
                                        //         ],
                                        //         icon: Image.asset(
                                        //           Helper.getAssetName(
                                        //             "dropdown.png",
                                        //             "real",
                                        //           ),
                                        //         ),
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Number of Portions",
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                                  children: [
                                                    ElevatedButton(
                                                      style: ButtonStyle(
                                                          elevation:
                                                          MaterialStateProperty
                                                              .all(5.0)),
                                                      onPressed: _deincrementCounter,
                                                      child: Text("-"),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Container(
                                                      height: 35,
                                                      width: 55,
                                                      decoration:
                                                      ShapeDecoration(
                                                        shape: StadiumBorder(
                                                          side: BorderSide(
                                                              color: AppColor.blue),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Text(
                                                          '$_counter',
                                                            style: TextStyle(
                                                              color: AppColor.blue,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    ElevatedButton(
                                                      style: ButtonStyle(
                                                          elevation:
                                                          MaterialStateProperty
                                                              .all(5.0)),
                                                      onPressed: _incrementCounter,
                                                      // tooltip: 'Increment',
                                                      child: Text("+"),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 200,
                                          width: double.infinity,
                                          child: Stack(
                                            children: [
                                              // Container(
                                              //   width: 120,
                                              //   decoration: ShapeDecoration(
                                              //     color: AppColor.blue,
                                              //     shape: RoundedRectangleBorder(
                                              //       borderRadius:
                                              //       BorderRadius.only(
                                              //         topRight:
                                              //         Radius.circular(40),
                                              //         bottomRight:
                                              //         Radius.circular(40),
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),
                                              // Align(
                                              //   alignment:
                                              //   Alignment.centerRight,
                                              //   child: Padding(
                                              //     padding: const EdgeInsets
                                              //         .symmetric(
                                              //       horizontal: 20,
                                              //     ),
                                              //     child: Container(
                                              //       height: 160,
                                              //       width: double.infinity,
                                              //       margin:
                                              //       const EdgeInsets.only(
                                              //         left: 50,
                                              //         right: 40,
                                              //       ),
                                              //       decoration: ShapeDecoration(
                                              //         shape:
                                              //         RoundedRectangleBorder(
                                              //           borderRadius:
                                              //           BorderRadius.only(
                                              //             topLeft:
                                              //             Radius.circular(
                                              //                 40),
                                              //             bottomLeft:
                                              //             Radius.circular(
                                              //                 40),
                                              //             topRight:
                                              //             Radius.circular(
                                              //                 10),
                                              //             bottomRight:
                                              //             Radius.circular(
                                              //                 10),
                                              //           ),
                                              //         ),
                                              //         shadows: [
                                              //           BoxShadow(
                                              //             color: AppColor
                                              //                 .placeholder
                                              //                 .withOpacity(0.3),
                                              //             offset: Offset(0, 5),
                                              //             blurRadius: 5,
                                              //           ),
                                              //         ],
                                              //         color: Colors.white,
                                              //       ),
                                              //       child: Column(
                                              //         mainAxisAlignment:
                                              //         MainAxisAlignment
                                              //             .center,
                                              //         children: [
                                              //           Text(
                                              //             "Total Price",
                                              //           ),
                                              //           SizedBox(
                                              //             height: 10,
                                              //           ),
                                              //           Text(
                                              //             "LKR 1500",
                                              //             style: TextStyle(
                                              //               color: AppColor
                                              //                   .primary,
                                              //               fontWeight:
                                              //               FontWeight.bold,
                                              //               fontSize: 20,
                                              //             ),
                                              //           ),
                                              //           SizedBox(height: 10),
                                              //           SizedBox(
                                              //             width: 200,
                                              //             child: ElevatedButton(
                                              //                 onPressed: () {},
                                              //                 child: Row(
                                              //                   mainAxisAlignment:
                                              //                   MainAxisAlignment
                                              //                       .center,
                                              //                   children: [
                                              //                     Image.asset(
                                              //                       Helper.getAssetName(
                                              //                           "add_to_cart.png",
                                              //                           "virtual"),
                                              //                     ),
                                              //                     Text(
                                              //                       "Add to Cart",
                                              //                     )
                                              //                   ],
                                              //                 )),
                                              //           )
                                              //         ],
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),
                                              // Padding(
                                              //   padding: const EdgeInsets.only(
                                              //     right: 20,
                                              //   ),
                                                 Align(
                                                  alignment: Alignment.center,
                                                   child: SizedBox(
                                                     width: 200,
                                                     height: 50,
                                                     child: ElevatedButton(
                                                       style: ButtonStyle(
                                                         backgroundColor: MaterialStateProperty.all(
                                                           Colors.orange,
                                                         ),
                                                         shape: MaterialStateProperty.all(
                                                           StadiumBorder(
                                                             side:
                                                             BorderSide(color: AppColor.blue, width: 1.5),
                                                           ),
                                                         ),
                                                       ),
                                                       onPressed: () {
                                                         Navigator.of(context).pushReplacementNamed(lastpage.routeName);
                                                       },

                                                       child: Text("Sign up"),
                                                     ),
                                                   ),
                                                ),


                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20,
                                  ),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    // child: ClipShadow(
                                    //   clipper: CustomTriangle(),
                                    //   boxShadow: [
                                    //     BoxShadow(
                                    //       color: AppColor.placeholder,
                                    //       offset: Offset(0, 5),
                                    //       blurRadius: 5,
                                    //     ),
                                    //   ],
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        color: Colors.white,
                                      ),
                                    // ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(),
          ),
        ],
      ),
    );
  }
}

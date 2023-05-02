import 'package:flutter/material.dart';
import 'package:flutter_project2/const/colors.dart';
import 'package:flutter_project2/utils/helper.dart';
import 'package:flutter_project2/utils/CustomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project2/const/colors.dart';
import 'package:flutter_project2/utils/helper.dart';
import 'package:flutter_project2/utils/SearchBar.dart';
import 'package:flutter_project2/Screens/IndividualItem.dart';
import 'package:flutter_project2/utils/Review.dart';
import 'package:flutter_project2/utils/p.dart';

import 'loginScreen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
        leading: Icon(
          icon,
          size: 32,
        ),
        title: Text(title, style: const TextStyle(color: Colors.black),)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                        Helper.getAssetName("h.png", "virtual")
                    ),
                    backgroundColor: Colors.blue,

                    radius: 70,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 7,
                      )
                    ],
                  )
                ],

              ),
              ),

              listTile(icon: Icons.home_outlined, title: 'home',),
              listTile(icon: Icons.shop_2_outlined, title: 'Review Cart',
    //           onTap: (){
    //             Navigator.of(context).push(
    //               MaterialPageRoute(builder: (context) =>Review(),
    //             ),
    // );
    //             }
              ),
              listTile(icon: Icons.person_2_outlined, title: 'My Profile',),
              listTile(
                icon: Icons.notification_add_outlined, title: 'Notification',),
              listTile(
                icon: Icons.star_border_outlined, title: 'Rating and Reviews',),
              listTile(icon: Icons.favorite_border_outlined, title: 'Faqs',),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              )
            ],
          )
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Home",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 17,
            )
        ),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.orange,
            child: Icon(Icons.search, size: 17, color: Colors.black),

          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 12,
              child: Icon(Icons.shop, size: 17, color: Colors.black,),
            ),
          ),
        ],
        backgroundColor: Colors.orange,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                                  Navigator.of(context).pop();

                                },
                                child: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Good morning Akila!",
                        ),
                        Image.asset(Helper.getAssetName("cart.png", "virtual"))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text("Deilivering to"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: 250,
                        child: DropdownButton(
                          value: "current location",
                          items: [
                            DropdownMenuItem(
                              child: Text("Current Location"),
                              value: "current location",
                            ),
                          ],
                          // icon: Image.asset(
                          //   Helper.getAssetName(
                          //       "search_filled.png", "real"),
                          // ),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                  SearchBar(
                    title: "Search Food",
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("p1.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Offers",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("p2.png", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Sri Lankan",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("p3.jpeg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Italian",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("p4.jpeg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Indian",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("p1.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Offers",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("p2.png", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Sri Lankan",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("p3.jpeg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Italian",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("p4.jpeg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Indian",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Items",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("View all"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Individual.routeName);
                          },
                          child: RecentItemCard(
                            image: Image.asset(
                              Helper.getAssetName("ph3.jpeg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Mulberry Pizza by Josh",
                            rating: "10",
                          ),
                        ),
                        RecentItemCard(
                          image: Image.asset(
                            Helper.getAssetName("ph4.jpeg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Barita",
                          rating: "10",
                        ),
                        RecentItemCard(
                          image: Image.asset(
                            Helper.getAssetName("ph5.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Pizza Rush Hour",
                          rating: "10",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Most Popular",
                        ),
                        TextButton(
                          onPressed: (

                              ) {},
                          child: Text("See all"
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MostPopularCard(
                            image: Image.asset(
                              Helper.getAssetName("ph8.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Cafe De Bambaa",
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          MostPopularCard(
                            name: "Burger by Bella",
                            image: Image.asset(
                              Helper.getAssetName("ph9.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Items",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("View all"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(HomeScreen.routeName);
                          },
                          child: RecentItemCard(
                            image: Image.asset(
                              Helper.getAssetName("ph3.jpeg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Mulberry Pizza by Josh",
                            rating: "10",
                          ),
                        ),
                        RecentItemCard(
                          image: Image.asset(
                            Helper.getAssetName("ph4.jpeg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Barita",
                          rating: "10",
                        ),
                        RecentItemCard(
                          image: Image.asset(
                            Helper.getAssetName("ph5.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Pizza Rush Hour",
                          rating: "10",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: true,
              )
          ),
        ],
      ),
    );
  }
}

class RecentItemCard extends StatelessWidget {
   RecentItemCard({
    required String name,
    required Image image,
    required String rating,
  })  : _name = name,
        _image = image,
        _rating = rating;

  final String _name;
  final Image _image;
  final String _rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 80,
            height: 80,
            child: _image,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _name,
                ),
                // Row(
                //   children: [
                //     Text("Cafe"),
                //     SizedBox(
                //       width: 5,
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(bottom: 5.0),
                //       child: Text(
                //         ".",
                //         style: TextStyle(
                //           color: AppColor.blue,
                //           fontWeight: FontWeight.w900,
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 5,
                //     ),
                //     Text("Western Food"),
                //     SizedBox(
                //       width: 20,
                //     ),
                //   ],
                // ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "real"),
                    ),
                    SizedBox(
                    ),
                    Text(
                      _rating,
                      style: TextStyle(
                        color: AppColor.blue,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(' Ratings',
                      style: TextStyle(
                      color: AppColor.blue,
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({
    required String name,
    required Image image,
  })  : _name = name,
        _image = image;

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 300,
            height: 200,
            child: _image,
          ),
        ),
        SizedBox(height: 10),
        Text(
          _name,

        ),
        Row(
          children: [
            Text("Cafe"),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                ".",
                style: TextStyle(
                  color: AppColor.blue,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("Western Food"),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              Helper.getAssetName("star_filled.png", "real"),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "4.9",
              style: TextStyle(
                color: AppColor.blue,
              ),
            )
          ],
        )
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    required String name,
    required Image image,
    required double rating,
  })  :
        _name = name,
        _image = image,
        _rating = rating;

  final String _name;
  final Image _image;
  final double _rating;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: _image),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _name,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "real"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.blue,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("(124 ratings)"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Cafe"),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.blue,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Western Food"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required Image image,
    required String name,
  })  : _image = image,
        _name = name;

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 100,
            height: 100,
            child: _image,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          _name,
        ),
      ],
    );
  }
}

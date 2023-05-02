import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project2/utils/helper.dart';
class MyProfile extends StatelessWidget {
  static const routeName = "/MyProfile";
  Widget singleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("p1.jpg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );
  }
  Widget ssingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("p2.png", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget fingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("p3.jpeg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget s1ingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("p4.jpeg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget s2ingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("ph1.jpg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget s3ingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("ph2.jpeg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget s4ingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("ph3.jpeg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget s5ingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("ph5.jpg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget s6ingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("ph6.jpg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget s7ingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("ph10.jpeg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget s8ingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("ph9.jpg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );

  }
  Widget s9ingleproducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Helper.getAssetName("ph5.jpg", "real"),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("fresh basil",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2500',
                        style: TextStyle(
                          color: Colors.black,
                        ),

                      )
                    ],
                  )
              ),
            ),
          ],
        )
    );
  }

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
    final imgUrl =
        "https://imgs.search.brave.com/9n5WVaLkj1wQl-s-c-ZtNtLnyUp-TmMP603QzNtQ-JY/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDM3MjQz/MjUuanBn";

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.orange,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                        Helper.getAssetName("bglogo.jpeg", "virtual")
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
              listTile(icon: Icons.shop_2_outlined, title: 'Review Cart',),
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
              color: Colors.black,
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children:[
            Container(
              height: 150,
              width: Helper.getScreenWidth(context),
              decoration: BoxDecoration(
             image: DecorationImage(
            fit: BoxFit.cover,
               image: NetworkImage(imgUrl),
             ),
                // borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('food',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleproducts(),
                  s1ingleproducts(),
                  s2ingleproducts(),
                  s3ingleproducts(),
                  s4ingleproducts(),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 15),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('foody fyy',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  s5ingleproducts(),
                  s6ingleproducts(),
                  s7ingleproducts(),
                  s8ingleproducts(),
                  s9ingleproducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
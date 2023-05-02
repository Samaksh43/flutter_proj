import 'package:flutter/material.dart';
import 'package:flutter_project2/utils/catalog.dart';
import 'package:flutter_project2/utils/CustomNavBar.dart';

class OffersPage extends StatelessWidget {
  static const routeName="/OfferPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offers'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset('assets/images/real/ph6.jpg'),
            title: Text('Offer 1'),
            subtitle: Text('Description of Offer 1'),
            trailing: Text('10% off'),
          ),
          ListTile(
            leading: Image.asset('assets/images/virtual/dessert.jpg'),
            title: Text('Offer 2'),
            subtitle: Text('Description of Offer 2'),
            trailing: Text('20% off'),
          ),
          ListTile(
            leading: Image.asset('assets/images/virtual/dessert2.jpg'),
            title: Text('Offer 2'),
            subtitle: Text('Description of Offer 2'),
            trailing: Text('20% off'),
          ),
          ListTile(
            leading: Image.asset('assets/images/virtual/coffee.jpg'),
            title: Text('Offer 2'),
            subtitle: Text('Description of Offer 2'),
            trailing: Text('20% off'),
          ),
          ListTile(
            leading: Image.asset('assets/images/real/ph5.jpg'),
            title: Text('Offer 2'),
            subtitle: Text('Description of Offer 2'),
            trailing: Text('20% off'),
          ),
          ListTile(
            leading: Image.asset('assets/images/real/ph8.jpg'),
            title: Text('Offer 2'),
            subtitle: Text('Description of Offer 2'),
            trailing: Text('20% off'),
          ),
          ListTile(
            leading: Image.asset('assets/images/real/ph9.jpg'),
            title: Text('Offer 2'),
            subtitle: Text('Description of Offer 2'),
            trailing: Text('20% off'),
          ),
          ListTile(
            leading: Image.asset('assets/images/real/p1.jpg'),
            title: Text('Offer 2'),
            subtitle: Text('Description of Offer 2'),
            trailing: Text('20% off'),
          ),
          ListTile(
            leading: Image.asset('assets/images/real/ph1.jpg'),
            title: Text('Offer 2'),
            subtitle: Text('Description of Offer 2'),
            trailing: Text('20% off'),
          ),
          // Add more ListTiles for each offer
        ],
      ),
    );
  }
}
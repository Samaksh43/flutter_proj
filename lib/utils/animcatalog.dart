import 'package:flutter/material.dart';
import 'package:flutter_project2/utils/Texts.dart';
import 'package:flutter_project2/utils/cart_widget.dart';
import 'package:flutter_project2/utils/MyTransformer.dart';
import 'package:flutter_project2/utils/transformers.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class animcatalog extends StatelessWidget {
  static const routeName= "/animcatalog";

  const animcatalog({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text(
          "Catalog",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: TransformerPageView(
        scrollDirection: Axis.vertical,
        curve: Curves.easeInBack,
        transformer: transformers[1], // transformers[5],
        itemCount: Texts.urlImages.length,
        itemBuilder: (context, index) {
          final urlImage = Texts.urlImages[index];
          final title = Texts.titles[index];
          final subtitle = Texts.subtitles[index];

          return CardWidget(
            urlImage: urlImage,
            title: title,
            subtitle: subtitle,
          );
        },
      ),
    );
  }
}
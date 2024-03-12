import 'package:flutter/material.dart';
import 'package:movie_db/models/art_model.dart';

class BigArtWidget extends StatelessWidget {
  const BigArtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)!.settings.arguments as ArtModel;
    return Scaffold(
        appBar: AppBar(title: Text(model.title!)),
        body: Center(
          child: Image.network(model.primaryImage!),
        ));
  }
}

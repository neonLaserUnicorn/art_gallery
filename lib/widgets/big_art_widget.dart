import 'package:flutter/material.dart';
import 'package:movie_db/models/art_model.dart';

class BigArtWidget extends StatelessWidget {
  final ArtModel? model;
  const BigArtWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(model!.title!)),
        body: Center(
          child: Image.network(model!.primaryImage!),
        ));
  }
}

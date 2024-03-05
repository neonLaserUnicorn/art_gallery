import 'package:flutter/material.dart';
import 'package:movie_db/models/http_helper.dart';
import 'package:movie_db/widgets/small_art_widget.dart';

import '../models/art_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gallery'),
        ),
        body: ListView.builder(
            itemBuilder: ((context, index) => SmallArtWidget(index))));
  }
}

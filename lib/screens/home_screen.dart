import 'package:flutter/material.dart';
import 'package:movie_db/widgets/small_art_widget.dart';

import '../models/cache.dart';

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
        body: Cache(
          child: Builder(builder: (context)
              //TODO: children should have dynamic height
              {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.5),
                shrinkWrap: true,
                itemBuilder: ((context, index) => SmallArtWidget(index)));
          }),
        ));
  }
}

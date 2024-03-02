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
  late Future<ArtModel?> result;

  @override
  void initState() {
    result = HttpHelper.getObject(8800);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: FutureBuilder<ArtModel?>(
          future: result,
          builder: (context, snapshot) {
            Widget child;
            if (snapshot.hasData) {
              child = SmallArtWidget(snapshot.data!);
              print(snapshot.data?.toJson());
            } else {
              child = CircularProgressIndicator();
            }
            return child;
          }),
    );
  }
}

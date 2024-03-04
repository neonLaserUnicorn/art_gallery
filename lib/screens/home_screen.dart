import 'package:flutter/material.dart';
import 'package:movie_db/models/gallery_buffer.dart';
import 'package:movie_db/widgets/small_art_widget.dart';

import '../models/art_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late Future<ArtModel?> result;
  bool isLoaded = false;
  final GalleryBuffer galleryBuffer = GalleryBuffer();

  @override
  void initState() {
    // result = HttpHelper.getObject(8800);
    loadFeed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: FutureBuilder<ArtModel?>(
          future: null,
          builder: (context, snapshot) {
            Widget child;
            if (isLoaded) {
              // child = SmallArtWidget(snapshot.data!);
              // print(snapshot.data?.toJson());
              child = ListView.builder(
                  itemBuilder: ((context, index) =>
                      SmallArtWidget(galleryBuffer.data[index]!)));
            } else {
              child = Center(child: CircularProgressIndicator());
            }
            return child;
          }),
    );
  }

  void loadFeed() async {
    isLoaded = false;
    await galleryBuffer.fetch(20);
    isLoaded = true;
  }
}

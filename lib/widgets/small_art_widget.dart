import 'package:flutter/material.dart';
import 'package:movie_db/models/gallery_buffer.dart';

import '../models/art_model.dart';
import '../models/cache.dart';

class SmallArtWidget extends StatefulWidget {
  final int objectId;
  const SmallArtWidget(this.objectId, {super.key});

  @override
  State<SmallArtWidget> createState() => _SmallArtWidgetState();
}

class _SmallArtWidgetState extends State<SmallArtWidget> {
  late Future<ArtModel?> result;

  @override
  void initState() {
    result = GalleryBuffer.get(widget.objectId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cache = Cache.of(context)?.cache;
    final model = cache?['${widget.objectId}'];
    return model != null
        ? _buildCached(context, model)
        : _buildFuture(context, result);
  }

  Widget _buildFuture(BuildContext context, Future<ArtModel?> result) {
    return FutureBuilder<ArtModel?>(
        future: result,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final model = snapshot.data!;
            Cache.of(context)?.cache['${widget.objectId}'] = model;
            return _buildCached(context, model);
          } else {
            return const Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ));
          }
        });
  }

  Widget _buildCached(BuildContext context, ArtModel model) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.minWidth / 2,
        child: IntrinsicHeight(
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/art', arguments: model),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(model.primaryImageSmall ??
                              model.primaryImage ??
                              "https://placehold.co/200x100")),
                    ),
                    Text(model.title!),
                    Text(model.artistDisplayName!),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

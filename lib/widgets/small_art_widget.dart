import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_db/models/http_helper.dart';

import '../models/art_model.dart';

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
    result = HttpHelper.getObject(widget.objectId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FutureBuilder<ArtModel?>(
          future: result,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final model = snapshot.data!;
              return SizedBox(
                width: constraints.maxWidth / 2,
                child: IntrinsicHeight(
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
                                image: NetworkImage(//model.primaryImageSmall ??
                                    //     model.primaryImage ??
                                    "https://placehold.co/200x100")),
                          ),
                          Text('${model.title}'),
                          Text('${model.artistDisplayName}'),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          });
    });
  }
}

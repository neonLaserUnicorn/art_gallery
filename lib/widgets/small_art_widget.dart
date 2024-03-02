import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/art_model.dart';

class SmallArtWidget extends StatelessWidget {
  final ArtModel model;
  const SmallArtWidget(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
                        image: NetworkImage(
                            model.primaryImageSmall ?? model.primaryImage!)),
                  ),
                  Text('${model.title}'),
                  Text('${model.artistDisplayName}'),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

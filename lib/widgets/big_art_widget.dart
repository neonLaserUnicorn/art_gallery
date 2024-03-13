import 'package:flutter/material.dart';
import 'package:movie_db/models/art_model.dart';

class BigArtWidget extends StatefulWidget {
  const BigArtWidget({super.key});

  @override
  State<BigArtWidget> createState() => _BigArtWidgetState();
}

class _BigArtWidgetState extends State<BigArtWidget> {
  final transformControl = TransformationController();
  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)!.settings.arguments as ArtModel;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(model.title!),
          backgroundColor: Colors.white.withAlpha(100),
        ),
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: InteractiveViewer(
              transformationController: transformControl,
              onInteractionEnd: (details) => setState(() {
                transformControl.toScene(Offset.zero);
              }),
              minScale: 0.1,
              maxScale: 4.6,
              scaleEnabled: true,
              panEnabled: true,
              child: Image.network(model.primaryImage!),
            )));
  }
}

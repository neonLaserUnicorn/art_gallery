import 'package:movie_db/models/http_helper.dart';

import 'art_model.dart';

class GalleryBuffer {
  List<ArtModel?> data = List<ArtModel?>.empty(growable: true);

  Future<void> fetch(int count) async {
    int id;
    if (data.isEmpty) {
      id = 1;
    } else {
      id = data.last?.objectID ?? 1;
    }
    for (int i = 0; i < count; ++i) {
      print('load of $id art object started');
      final art = await HttpHelper.getObject(id);
      if (art!.isPublicDomain && art.objectName == "Painting") {
        data.add(art);
      } else {
        i--;
      }
      id++;
    }
  }
}

import 'package:movie_db/models/http_helper.dart';

import 'art_model.dart';

class GalleryBuffer {
  List<ArtModel?> data = List<ArtModel?>.empty(growable: true);

  Future<void> fetch(int count) async {
    int id;
    if (data.isEmpty) {
      id = 1000;
    } else {
      id = data.last?.objectID ?? 1000;
    }
    for (int i = 0; i < count; ++i) {
      print('load of $id art object started');
      final art = await HttpHelper.getObject(id);
      if (art != null) {
        data.add(art);
        print('$id added');
      } else {
        i--;
      }
      id++;
    }
  }
}

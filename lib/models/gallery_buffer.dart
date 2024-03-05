import 'package:movie_db/models/http_helper.dart';

import 'art_model.dart';

class GalleryBuffer {
  List<int> validIds = List<int>.empty(growable: true);

  Future<ArtModel> get(int id) async {
    if (validIds.length <= id) validIds.add(validIds.last);
    while (true) {
      final result = await HttpHelper.getObject(validIds[id]);
      bool ans = result?.isPublicDomain ?? false;
      if (ans) return result!;
      validIds[id]++;
    }
  }
}

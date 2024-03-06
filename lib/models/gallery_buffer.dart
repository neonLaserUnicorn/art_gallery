import 'package:movie_db/models/http_helper.dart';

import 'art_model.dart';

class GalleryBuffer {
  static final List<int> _validIds =
      List<int>.generate(20, (index) => index, growable: true);

  static Future<ArtModel> get(int id) async {
    if (_validIds.length <= id) _validIds.add(_validIds.last + 1);
    while (true) {
      final result = await HttpHelper.getObject(_validIds[id]);
      bool ans = result?.isPublicDomain ?? false;
      if (ans) return result!;
      _validIds[id]++;
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:io';

import 'art_model.dart';

class HttpHelper {
  static const String urlBase =
      "https://collectionapi.metmuseum.org/public/collection/v1/objects";

  static Future<ArtModel?> getObject(int id) async {
    http.Response result = await http.get(Uri.parse('$urlBase/$id'));
    if (result.statusCode == HttpStatus.ok) {
      final jsonResult = jsonDecode(result.body) as Map<String, dynamic>;
      final art = ArtModel.fromJson(jsonResult);
      print('!!!${art.objectID}');
      return art;
    } else {
      return null;
    }
  }
}

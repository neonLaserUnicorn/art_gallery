import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:io';

import 'art_model.dart';

class HttpHelper {
  static const String _urlBase =
      "https://collectionapi.metmuseum.org/public/collection/v1/objects";
  static const String _urlAll =
      'https://collectionapi.metmuseum.org/public/collection/v1/search?medium=Paintings&q=paint';

  static Future<Map<String, dynamic>> getAll() async {
    http.Response result = await http.get(Uri.parse(_urlAll));
    if (result.statusCode == HttpStatus.ok) {
      final jsonResult = jsonDecode(result.body) as Map<String, dynamic>;
      return jsonResult;
    } else {
      return {};
    }
  }

  static Future<ArtModel?> getObject(int id) async {
    http.Response result = await http.get(Uri.parse('$_urlBase/$id'));
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

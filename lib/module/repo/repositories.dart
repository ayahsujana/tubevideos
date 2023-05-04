import 'dart:convert';

import 'package:http/http.dart';
import 'package:tubevideos/module/model/videos.dart';
import 'package:tubevideos/module/network/api.dart';

class VideoRepository {
  Future<List<Videos>> getVideos() async {
    final response = await get(Uri.parse(Api.allVideos));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => Videos.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

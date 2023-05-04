import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tubevideos/module/model/videos.dart';
import 'package:tubevideos/module/network/api.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<Videos> fetchVideoList() async {
    Response response = await _dio.get(Api.allVideos);
    return Videos.fromJson(response.data);
  }
}

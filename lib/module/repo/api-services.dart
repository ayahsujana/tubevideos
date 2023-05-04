// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:tubevideos/module/model/videos.dart';
import 'package:tubevideos/module/network/api.dart';

class ApiService {
  final http.Client client;
  ApiService({
    required this.client,
  });

  Future<Either<String, List<Videos>>> getAllVideo() async {
    try {
      final res = await client.get(Uri.parse(Api.allVideos));
      return Right(List<Videos>.from(jsonDecode(res.body).map(
        (x) => Videos.fromJson(x),
      )).toList());
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, Videos>> getDetailVideo(String id) async {
    try {
      final res = await client.get(Uri.parse(Api.appDetails + id));
      return Right(Videos.fromJson(jsonDecode(res.body)));
    } catch (e) {
      return Left(e.toString());
    }
  }
}

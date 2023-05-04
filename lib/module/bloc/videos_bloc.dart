import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tubevideos/module/model/videos.dart';
import 'package:http/http.dart' as http;
import 'package:tubevideos/module/network/api.dart';

part 'videos_event.dart';
part 'videos_state.dart';

class VideosBloc extends Bloc<VideosEvent, VideosState> {
  VideosBloc() : super(VideosInitial()) {
    on<GetVideoEvent>((event, emit) async {
      emit(VideosLoading());
      final res = await http.get(Uri.parse(Api.allVideos));
      emit(VideosSuccess(videos: videoListFromJson(res.body)));
    });
  }
}

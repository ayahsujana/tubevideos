// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tubevideos/module/model/videos.dart';

import '../../repo/api-services.dart';

part 'videos_state.dart';

class VideosCubit extends Cubit<VideosState> {
  VideosCubit(
    this.apiService,
  ) : super(VideosInitial());

  final ApiService apiService;

  void getAllVideos() async {
    emit(VideosLoading());
    final result = await apiService.getAllVideo();
    result.fold(
      (l) => emit(VideosError(message: l)),
      (r) => emit(VideosLoaded(listVideos: r)),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:tubevideos/module/model/videos.dart';
import 'package:tubevideos/module/repo/api-services.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit(
    this.apiService,
  ) : super(DetailInitial());

  final ApiService apiService;

  void getDetailVideo(String id) async {
    emit(DetailLoading());
    final result = await apiService.getDetailVideo(id);
    result.fold(
      (l) => emit(DetailError(message: l)),
      (r) => emit(DetailLoaded(detail: r)),
    );
  }
}

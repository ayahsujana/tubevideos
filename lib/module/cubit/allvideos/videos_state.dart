// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'videos_cubit.dart';

abstract class VideosState extends Equatable {
  const VideosState();

  @override
  List<Object> get props => [];
}

class VideosInitial extends VideosState {}

class VideosLoading extends VideosState {}

class VideosLoaded extends VideosState {
  final List<Videos> listVideos;
  const VideosLoaded({
    required this.listVideos,
  });

  @override
  List<Object> get props => [listVideos];
}

class VideosError extends VideosState {
  final String message;
  const VideosError({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

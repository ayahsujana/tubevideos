part of 'videos_bloc.dart';

abstract class VideosState {}

class VideosInitial extends VideosState {}

class VideosLoading extends VideosState {}

class VideosSuccess extends VideosState {
  final List<Videos> videos;
  VideosSuccess({
    required this.videos,
  });
}

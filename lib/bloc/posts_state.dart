part of 'posts_bloc.dart';

@immutable
abstract class PostsState {}

class PostsInitial extends PostsState {}

class PostInitial extends PostsState {}

class LoadingState extends PostsState {}

class LoadedState extends PostsState {
  List<PostModel> posts;

  LoadedState({required this.posts});
}

class FailedToLoadState extends PostsState {
  String? error;
  FailedToLoadState({this.error});
}

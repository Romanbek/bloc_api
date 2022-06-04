import 'package:bloc/bloc.dart';
import 'package:bloc_api/data/data_service.dart';
import 'package:bloc_api/models/post_models.dart';
import 'package:meta/meta.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final _dataServise = DataService();
  PostsBloc(DataService dataService) : super(LoadingState()) {
    on<PostsEvent>((event, emit) async {
      print(event);
      if (event is LoadEvent) {
        emit(LoadingState());
        try {
          final posts = await _dataServise.getPosts();
          print('readern');
          emit(LoadedState(posts: posts));
        } catch (e) {
          emit(FailedToLoadState(error: e.toString()));
        }
      }
    });
  }
}

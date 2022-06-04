import 'package:bloc_api/bloc/posts_bloc.dart';
import 'package:get_it/get_it.dart';

import 'data/data_service.dart';

final s1 = GetIt.instance;

void setup() {
  s1.registerLazySingleton<DataService>(() => DataService());
  s1.registerFactory(() => PostsBloc(s1<DataService>()));
}

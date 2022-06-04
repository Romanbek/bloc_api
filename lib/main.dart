import 'package:bloc_api/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/posts_bloc.dart';
import 'home/posts_view.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostsBloc>(
        create: (context) => s1<PostsBloc>()..add(LoadEvent()),
        child: const PostView(),
      ),
    );
  }
}

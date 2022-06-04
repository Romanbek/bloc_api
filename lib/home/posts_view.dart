import 'package:bloc_api/bloc/posts_bloc.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bloc'),
        ),
        body: BlocBuilder<PostsBloc, PostsState>(
          builder: (context, state) {
            if (state is LoadedState) {
              return ListView.builder(
                itemCount: state.posts.length,
                itemBuilder: (context, index) {
                  final posts = state.posts[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(posts.id.toString()),
                      ),
                      title: Text(posts.name, maxLines: 1),
                      subtitle: Text(posts.id, maxLines: 1),
                    ),
                  );
                  //     ListTile(
                  //   title: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(posts.name),
                  //       Text(posts.title),
                  //       Text(posts.data.toString()),
                  //       Text(posts.createdAt.toString()),
                  //       const SizedBox(height: 50.0),
                  //     ],
                  //   ),
                  // );
                },
              );
            }
            return Container();
            // else if (state is FailedToLoadState) {
            //   return Center(child: Text(state.error));
            // }
            // return const Center(
            //   child: CircularProgressIndicator(),
            // );
          },
        ),
      ),
    );
  }
}

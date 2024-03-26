import 'package:flutter/material.dart';
import 'package:movie_app/movies/movie_item.dart';
import 'package:movie_app/widgets/movie_list_widget.dart';

class MovieListPage extends StatelessWidget {
  MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie List'),
      ),
      body: MovieListWidget()
      // body: ListView.builder(
      //     itemCount: movieList.length, itemBuilder: (context, index) {
      //       return ListTile(
      //         title: Text(
      //           movieList[index].title?? 'No Title',
      //
      //         ),
      //         subtitle: Text(movieList[index].genre?? 'No Genre'),
      //       );
      // return Padding(
      //   padding: const EdgeInsets.all(14.0),
      //   child: Container(
      //     child: Column(
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Text(movieList[index].title!),
      //             Icon(Icons.star,),
      //             Text(movieList[index].rating)
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // );
    );
  }
}

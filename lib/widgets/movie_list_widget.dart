import 'package:flutter/material.dart';

import '../movies/movie_item.dart';

class MovieListWidget extends StatelessWidget {
  MovieListWidget({super.key});

  final movieList = [
    MovieItem('Manjummal Boys', 'Thriller', 'Malayalam', 9.1,'assets/images/boys.jpg'),
    MovieItem('Premalu', 'Rom-Com', 'Malayalam', 9.0,'assets/images/premalu.jpg'),
    MovieItem('Oppenheimer', 'Drama', 'English', 9.0,'assets/images/open.jpg'),
    MovieItem('Poor Things', 'Sci-fi', 'English', 8.9,'assets/images/poor.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movieList[index].title ?? 'no title',
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontFamily: 'pathway',
                            fontSize: 20),
                      ),
                      Container(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(movieList[index].rating.toString() ??
                                'no rating',style: const TextStyle(fontFamily: 'pathway',fontSize: 17),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            const Text(
                              'Genre: ',
                              style: TextStyle(
                                  fontFamily: 'pathway',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Text(
                              movieList[index].genre ?? 'no genre',
                              style: const TextStyle(fontFamily: 'pathway',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Text(movieList[index].language ?? 'no language',style: const TextStyle(fontFamily: 'pathway',fontSize: 17),)
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

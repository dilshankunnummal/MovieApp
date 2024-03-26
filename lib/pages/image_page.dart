import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Image Page'),
        ),
        body: Column(
          children: [
            CachedNetworkImage(
              imageUrl: tajMahal,
              progressIndicatorBuilder: (context, url, progress) {
                return Center(child: CircularProgressIndicator());
              },
            ),
            Image.network(
              tajMahal,
              height: 250,
              width: double.maxFinite,
              fit: BoxFit.cover,
              loadingBuilder: (_, __, ___) {
                return CircularProgressIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}

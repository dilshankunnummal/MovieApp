import 'package:flutter/material.dart';
import 'package:movie_app/pages/counter_page.dart';
import 'package:movie_app/pages/dashboard_page.dart';
import 'package:movie_app/pages/image_page.dart';
import 'package:movie_app/pages/lottie_page.dart';
import 'package:movie_app/pages/movie_list_page.dart';
import 'package:movie_app/pages/tween_animation_page.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  DashboardPage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)

      ),
    );
  }
}

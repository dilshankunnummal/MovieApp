import 'package:flutter/material.dart';
import 'package:movie_app/pages/lottie_page.dart';
import 'package:movie_app/pages/movie_list_page.dart';
import 'package:movie_app/pages/tween_animation_page.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var currentIndex = 0;

  final navBarItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
    const BottomNavigationBarItem(icon: Icon(Icons.more), label: 'more'),
  ];

  final pages = [
    MovieListPage(),
    const TweenAnimationPage(),
    const LottiePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,  //for click each item
        items: navBarItem,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  const TweenAnimationPage({super.key});

  @override
  State<TweenAnimationPage> createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage> with SingleTickerProviderStateMixin {
  late Animation animation;

  late AnimationController controller;

  @override
  void initState() {

    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 5));
    animation = Tween(
      begin: 50.0,
      end: 200.0
    ).animate(controller);




    animation.addListener(() {   //to listen animation
      setState(() {

      });
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation'),
        elevation: 8,
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: Colors.blue,
        ),
      ),
    );
  }
}

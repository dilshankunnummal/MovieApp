import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/constants.dart';

class LottiePage extends StatelessWidget {
  const LottiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lottie page'),

      ),
      body: Lottie.network(deliveryLottieUrl),
    );
  }
}

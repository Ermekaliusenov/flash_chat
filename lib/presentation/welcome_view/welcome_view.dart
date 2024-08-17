import 'package:flash_chat/components/animations/curved_animation.dart';
import 'package:flash_chat/components/animations/text_animation.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CurvedAnimationCustom(),
              TextAnimation(),
            ],
          )
        ],
      ),
    );
  }
}

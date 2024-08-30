import 'package:flash_chat/components/animations/curved_animation.dart';
import 'package:flash_chat/components/animations/text_animation.dart';
import 'package:flash_chat/components/buttons/custom_button.dart';
import 'package:flash_chat/presentation/login_view/login_view.dart';
import 'package:flash_chat/presentation/register_view/register_view.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CurvedAnimationCustom(),
                TextAnimation(),
              ],
            ),
            SizedBox(height: 30),
            CustomButton(
              data: 'Логин',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginView(),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            CustomButton(
              data: 'Регистрация',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

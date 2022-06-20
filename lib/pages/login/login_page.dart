import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../services/services.dart';
import '../../shared/shared.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FlutterLogo(
              size: 150,
            ),
            Flexible(
                child: LoginButton(
              icon: FontAwesomeIcons.userNinja,
              text: 'Continue as Guest',
              loginMethod: AuthService().anonymLogin,
              color: Colors.deepPurple,
            )),
            Flexible(
                child: LoginButton(
              text: 'Sign in with Google',
              icon: FontAwesomeIcons.google,
              color: Colors.red,
              loginMethod: AuthService().googleLogin,
            )),
            !Platform.isAndroid
                ? FutureBuilder<Object>(
                    future: SignInWithApple.isAvailable(),
                    builder: (context, snapshot) {
                      if (snapshot.data == true) {
                        return Flexible(child: SignInWithAppleButton(
                          onPressed: () {
                            AuthService().signInWithApple();
                          },
                        ));
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

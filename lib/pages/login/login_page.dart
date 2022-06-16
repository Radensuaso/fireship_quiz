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
          children: Platform.isAndroid
              ? [
                  const FlutterLogo(
                    size: 150,
                  ),
                  LoginButton(
                    icon: FontAwesomeIcons.userNinja,
                    text: 'Continue as Guest',
                    loginMethod: AuthService().anonymLogin,
                    color: Colors.deepPurple,
                  ),
                  LoginButton(
                    text: 'Sign in with Google',
                    icon: FontAwesomeIcons.google,
                    color: Colors.red,
                    loginMethod: AuthService().googleLogin,
                  ),
                ]
              : [
                  const FlutterLogo(
                    size: 150,
                  ),
                  LoginButton(
                    icon: FontAwesomeIcons.userNinja,
                    text: 'Continue as Guest',
                    loginMethod: AuthService().anonymLogin,
                    color: Colors.deepPurple,
                  ),
                  LoginButton(
                    text: 'Sign in with Google',
                    icon: FontAwesomeIcons.google,
                    color: Colors.red,
                    loginMethod: AuthService().googleLogin,
                  ),
                  FutureBuilder<Object>(
                    future: SignInWithApple.isAvailable(),
                    builder: (context, snapshot) {
                      if (snapshot.data == true) {
                        return SignInWithAppleButton(
                          onPressed: () {
                            AuthService().signInWithApple();
                          },
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ],
        ),
      ),
    );
  }
}

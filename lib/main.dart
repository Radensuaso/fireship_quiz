import 'package:firebase_core/firebase_core.dart';
import 'package:fireship_quiz/firebase_options.dart';
import 'package:flutter/material.dart';

import 'pages/pages.dart';
import 'routes.dart';
import 'themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fireship quiz', routes: appRoutes, theme: appTheme);
  }
}

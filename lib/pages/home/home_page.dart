import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/about'),
            child: Text(
              'about',
              style: Theme.of(context).textTheme.button,
            )),
      ),
    );
  }
}

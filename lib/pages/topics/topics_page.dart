import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics'),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

import 'package:flutter/material.dart';

import '../../services/services.dart';
import '../../shared/shared.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics'),
      ),
      body: FutureBuilder<List<Topic>>(
          future: FirestoreService().getTopics(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Loader(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: ErrorMessage(message: snapshot.error.toString()),
              );
            } else if (snapshot.hasData) {
              var topics = snapshot.data!;

              return GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20.0),
                crossAxisSpacing: 10.0,
                crossAxisCount: 2,
                children:
                    topics.map((topic) => TopicItem(topic: topic)).toList(),
              );
            } else {
              return const Text('No topics found in Firestore. Check database');
            }
          }),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

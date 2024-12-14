import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Home View
final class HomeView extends StatelessWidget {
  /// Home View constructor
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: const Center(
        child: Text('Hello, HomeView!'),
      ),
    );
  }
}

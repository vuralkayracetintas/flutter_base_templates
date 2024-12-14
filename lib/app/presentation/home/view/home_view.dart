import 'package:auto_route/auto_route.dart';
import 'package:base_templates/core/functions/app_function.dart';
import 'package:base_templates/core/router/app_router.dart';
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
        actions: [
          IconButton(
            onPressed: () {
              AppFunction.appRouter.push(const SettingRoute());
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: const Center(
        child: Text('Hello, HomeView!'),
      ),
    );
  }
}

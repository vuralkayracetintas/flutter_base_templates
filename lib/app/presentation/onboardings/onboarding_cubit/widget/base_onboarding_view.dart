import 'package:base_templates/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

/// Base Onboarding View
final class BaseOnboardingView extends StatelessWidget {
  
  const BaseOnboardingView({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Page $index'),
      ),
      body: Center(
        child: Text(
          'Hello Welcome to Onboarding Page $index',
          style: context.theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:base_templates/core/enum/image_enum.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Settings View
final class SettingView extends StatelessWidget {
  /// Settings View constructor
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(image: AssetImage(ImageEnum.car.path)),
          ],
        ),
      ),
    );
  }
}

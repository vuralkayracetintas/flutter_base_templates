import 'package:flutter/material.dart';

/// Settings Button details model
final class SettignsButtonModel {
  /// Settings Button details model constructor
  const SettignsButtonModel({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  /// Settings Button title
  final String title;

  /// Settings Button icon
  final IconData icon;

  /// Settings Button onTap function
  final VoidCallback onTap;
}

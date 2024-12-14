import 'package:flutter/material.dart';

/// Settings Button Widget
final class SettingButton extends StatelessWidget {
  /// Settings Button Widget constructor
  const SettingButton({
    required this.onTap,
    required this.title,
    required this.icon,
    super.key,
  });

  /// Settings Button OnTap function
  final VoidCallback onTap;

  /// Settings Button Title
  final String title;

  /// Settings Button Icon
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: ListTile(
          title: Text(title),
          leading: Icon(icon),
        ),
      ),
    );
  }
}

import 'package:base_templates/app/presentation/settings/model/settings_button_model.dart';
import 'package:flutter/material.dart';

/// Settings view mixin
mixin SettingsMixin {
  /// Settings button list datas
  List<SettignsButtonModel> settingsButtonList = [
    SettignsButtonModel(title: 'Rate Us', icon: Icons.add, onTap: () {}),
    SettignsButtonModel(title: 'Rate Us', icon: Icons.add, onTap: () {}),
    SettignsButtonModel(title: 'Rate Us', icon: Icons.add, onTap: () {}),
    SettignsButtonModel(title: 'Rate Us', icon: Icons.add, onTap: () {}),
    SettignsButtonModel(title: 'Rate Us', icon: Icons.add, onTap: () {}),
  ];
}

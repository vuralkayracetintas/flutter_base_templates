// ignore_for_file: public_member_api_docs, must_be_immutable

import 'package:base_templates/app/presentation/settings/mixin/settings_mixin.dart';
import 'package:base_templates/app/presentation/settings/widget/settings_button.dart';
import 'package:flutter/material.dart';

final class SettingsBody extends StatelessWidget with SettingsMixin {
  SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // height: context.height,
      children: List.generate(
        settingsButtonList.length,
        (index) {
          return SettingButton(
            onTap: settingsButtonList[index].onTap,
            title: settingsButtonList[index].title,
            icon: settingsButtonList[index].icon,
          );
        },
      ),
    );
  }
}

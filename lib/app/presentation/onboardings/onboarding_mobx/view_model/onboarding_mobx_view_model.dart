import 'package:base_templates/core/functions/app_function.dart';
import 'package:base_templates/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'onboarding_mobx_view_model.g.dart';

/// Onboarding mobx viewmodel
class OnboardingMobxViewModel = _OnboardingMobxViewModelBase
    with _$OnboardingMobxViewModel;

abstract class _OnboardingMobxViewModelBase with Store {
  @observable
  late PageController pageController;

  @observable
  int index = 0;

  @action
  void nextPage() {
    if (index < 2) {
      index++;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Navigate to finish onboarding
      AppFunction.appRouter.pushAndPopUntil(
        const HomeRoute(),
        predicate: (route) {
          return false;
        },
      );
    }
  }
}

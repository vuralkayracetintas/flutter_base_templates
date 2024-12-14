import 'package:auto_route/auto_route.dart';
import 'package:base_templates/app/presentation/onboardings/onboarding_cubit/widget/base_onboarding_view.dart';
import 'package:base_templates/core/functions/app_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()

/// Onboarding Mobx State Management View
final class OnboardingMobxView extends StatefulWidget {
  /// Onboarding Mobx State Management View constractor
  const OnboardingMobxView({super.key});

  @override
  State<OnboardingMobxView> createState() => _OnboardingMobxViewState();
}

class _OnboardingMobxViewState extends State<OnboardingMobxView> {
  @override
  void initState() {
    AppFunction.onboardingViewModel.pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Onboarding Example'),
          ),
          body: PageView.builder(
            controller: AppFunction.onboardingViewModel.pageController,
            itemCount: 3,
            itemBuilder: (context, index) {
              return BaseOnboardingView(index: index);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: AppFunction.onboardingViewModel.nextPage,
            child: const Icon(Icons.arrow_forward),
          ),
        );
      },
    );
  }
}

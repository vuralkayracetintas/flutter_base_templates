import 'package:auto_route/auto_route.dart';
import 'package:base_templates/app/presentation/onboardings/onboarding_cubit/cubit/onboarding_cubit.dart';
import 'package:base_templates/app/presentation/onboardings/onboarding_cubit/widget/base_onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()

/// Onboarding View
final class OnboardingCubitView extends StatelessWidget {
  /// Onboarding View constractor
  const OnboardingCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingCubit, OnboardingState>(
      listener: (context, state) {
        final cubit = context.read<OnboardingCubit>();

        cubit.pageController.animateToPage(
          state.currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Onboarding Example'),
        ),
        body: PageView.builder(
          controller: context.read<OnboardingCubit>().pageController,
          itemCount: 3,
          itemBuilder: (context, index) {
            return BaseOnboardingView(index: index);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<OnboardingCubit>().nextPage();
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}

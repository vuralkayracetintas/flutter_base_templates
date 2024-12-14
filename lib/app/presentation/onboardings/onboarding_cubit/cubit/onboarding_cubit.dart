import 'package:base_templates/core/functions/app_function.dart';
import 'package:base_templates/core/router/app_router.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState(currentPage: 0));

  PageController pageController = PageController();

  Future<void> nextPage() async {
    if (state.currentPage < 2) {
      var currentPage = state.currentPage;

      emit(state.copyWith(currentPage: ++currentPage));
      await pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      /// Navigate to finish onboarding
      await AppFunction.appRouter.pushAndPopUntil(
        const HomeRoute(),
        predicate: (route) {
          return false;
        },
      );
    }
  }
}

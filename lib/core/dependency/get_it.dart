import 'package:base_templates/app/presentation/onboardings/onboarding_mobx/view_model/onboarding_mobx_view_model.dart';
import 'package:base_templates/core/router/app_router.dart';
import 'package:get_it/get_it.dart';

/// GetIt instance
final getIt = GetIt.instance;

/// Setup getit for dependency injection
void setupGetIt() {
  setupModel();

  // setupCubit();
  setupMobx();
}

/// Setup model for dependency injection
void setupModel() {
  getIt.registerSingleton<AppRouter>(AppRouter());
}

/// Setup cubit state management
void setupCubit() {}

/// Setup mobx state management
void setupMobx() {
  getIt.registerSingleton<OnboardingMobxViewModel>(OnboardingMobxViewModel());
}

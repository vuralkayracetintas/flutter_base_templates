import 'package:base_templates/app/presentation/onboardings/onboarding_mobx/view_model/onboarding_mobx_view_model.dart';
import 'package:base_templates/core/dependency/get_it.dart';
import 'package:base_templates/core/router/app_router.dart';

/// Project app function
final class AppFunction {
  AppFunction._();

  /// app router instance
  static final appRouter = getIt.get<AppRouter>();

  /// onboarding view model mobx instance
  static final onboardingViewModel = getIt.get<OnboardingMobxViewModel>();
}

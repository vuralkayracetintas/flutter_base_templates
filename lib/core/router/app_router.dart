import 'package:auto_route/auto_route.dart';
import 'package:base_templates/app/presentation/home/view/home_view.dart';
import 'package:base_templates/app/presentation/onboardings/onboarding_cubit/view/onboarding_cubit_view.dart';
import 'package:base_templates/app/presentation/onboardings/onboarding_mobx/view/onboarding_mobx_view.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'View,Route',
)

/// App Router for the application
final class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingCubitRoute.page,
          // initial: ,
        ),
        AutoRoute(page: HomeRoute.page),

        AutoRoute(page: OnboardingMobxRoute.page, initial: true),
        // AutoRoute(page: )
      ];
}

import 'package:base_templates/core/router/app_router.dart';
import 'package:get_it/get_it.dart';

/// GetIt instance
final getIt = GetIt.instance;

/// Setup getit for dependency injection
void setupGetIt() {
  setupModel();
}

/// Setup model for dependency injection
void setupModel() {
  getIt.registerSingleton<AppRouter>(AppRouter());
}

/// Setup cubit state management
void setupCubit() {}

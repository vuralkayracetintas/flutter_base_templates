import 'package:base_templates/app/presentation/onboardings/onboarding_cubit/cubit/onboarding_cubit.dart';
import 'package:base_templates/core/functions/app_function.dart';
import 'package:base_templates/core/init/application_init.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  /// Initialize the application
  ApplicationInit.init();
  runApp(const BaseTemplatesApp());
}

/// Base Templates App
class BaseTemplatesApp extends StatelessWidget {
  ///
  const BaseTemplatesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnboardingCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: AppFunction.appRouter.config(),
        title: 'Base Templates Application ',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}

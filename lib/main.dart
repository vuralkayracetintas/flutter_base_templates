import 'package:base_templates/app/presentation/onboardings/onboarding_cubit/cubit/onboarding_cubit.dart';
import 'package:base_templates/app/presentation/onboardings/onboarding_cubit/view/onboarding_cubit_view.dart';
import 'package:base_templates/core/functions/app_function.dart';
import 'package:base_templates/core/init/application_init.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  ApplicationInit.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnboardingCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: AppFunction.appRouter.config(),
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}

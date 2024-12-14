part of 'onboarding_cubit.dart';

final class OnboardingState extends Equatable {
  const OnboardingState({required this.currentPage});

  final int currentPage;

  OnboardingState copyWith({int? currentPage}) {
    return OnboardingState(
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [currentPage];
}

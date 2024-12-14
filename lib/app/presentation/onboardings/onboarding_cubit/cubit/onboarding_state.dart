part of 'onboarding_cubit.dart';

/// Onboarding state
final class OnboardingState extends Equatable {
  /// Onboarding state constructor
  const OnboardingState({required this.currentPage});

  /// Current page index
  final int currentPage;

  /// Copy with method
  OnboardingState copyWith({int? currentPage}) {
    return OnboardingState(
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [currentPage];
}

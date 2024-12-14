// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_mobx_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardingMobxViewModel on _OnboardingMobxViewModelBase, Store {
  late final _$pageControllerAtom = Atom(
      name: '_OnboardingMobxViewModelBase.pageController', context: context);

  @override
  PageController get pageController {
    _$pageControllerAtom.reportRead();
    return super.pageController;
  }

  bool _pageControllerIsInitialized = false;

  @override
  set pageController(PageController value) {
    _$pageControllerAtom.reportWrite(
        value, _pageControllerIsInitialized ? super.pageController : null, () {
      super.pageController = value;
      _pageControllerIsInitialized = true;
    });
  }

  late final _$indexAtom =
      Atom(name: '_OnboardingMobxViewModelBase.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$_OnboardingMobxViewModelBaseActionController =
      ActionController(name: '_OnboardingMobxViewModelBase', context: context);

  @override
  void nextPage() {
    final _$actionInfo = _$_OnboardingMobxViewModelBaseActionController
        .startAction(name: '_OnboardingMobxViewModelBase.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$_OnboardingMobxViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageController: ${pageController},
index: ${index}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Log`
  String get loginScreenTitlePartOne {
    return Intl.message(
      'Log',
      name: 'loginScreenTitlePartOne',
      desc: '',
      args: [],
    );
  }

  /// ` In`
  String get loginScreenTitlePartTwo {
    return Intl.message(
      ' In',
      name: 'loginScreenTitlePartTwo',
      desc: '',
      args: [],
    );
  }

  /// `login to unlock exclusive styles and personalized recommendation`
  String get loginScreenDescription {
    return Intl.message(
      'login to unlock exclusive styles and personalized recommendation',
      name: 'loginScreenDescription',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get loginScreenEmail {
    return Intl.message(
      'Email',
      name: 'loginScreenEmail',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get loginScreenPass {
    return Intl.message(
      'password',
      name: 'loginScreenPass',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginScreenButton {
    return Intl.message(
      'Login',
      name: 'loginScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ? `
  String get loginScreenHaveNotAccount {
    return Intl.message(
      'Don\'t have an account ? ',
      name: 'loginScreenHaveNotAccount',
      desc: '',
      args: [],
    );
  }

  /// `create account`
  String get loginScreenCreateAccount {
    return Intl.message(
      'create account',
      name: 'loginScreenCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get loginScreenForgetPass {
    return Intl.message(
      'Forget Password ?',
      name: 'loginScreenForgetPass',
      desc: '',
      args: [],
    );
  }

  /// `Sign`
  String get registerScreenTitlePartOne {
    return Intl.message(
      'Sign',
      name: 'registerScreenTitlePartOne',
      desc: '',
      args: [],
    );
  }

  /// ` Up`
  String get registerScreenTitlePartTwo {
    return Intl.message(
      ' Up',
      name: 'registerScreenTitlePartTwo',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ? `
  String get registerScreenHaveAccount {
    return Intl.message(
      'Already have an account ? ',
      name: 'registerScreenHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get registerScreenButton {
    return Intl.message(
      'Sign Up',
      name: 'registerScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign up now to receive a special discount on your first purchase`
  String get registerScreenDescription {
    return Intl.message(
      'Sign up now to receive a special discount on your first purchase',
      name: 'registerScreenDescription',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Brands`
  String get brands {
    return Intl.message(
      'Brands',
      name: 'brands',
      desc: '',
      args: [],
    );
  }

  /// `Healthy App`
  String get health {
    return Intl.message(
      'Healthy App',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `A food health app can help you maintain a healthy lifestyle by enabling you to track your food intake, find restaurants suitable for your dietary needs`
  String get desc {
    return Intl.message(
      'A food health app can help you maintain a healthy lifestyle by enabling you to track your food intake, find restaurants suitable for your dietary needs',
      name: 'desc',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get Category {
    return Intl.message(
      'Category',
      name: 'Category',
      desc: '',
      args: [],
    );
  }

  /// `Favourite`
  String get Favourite {
    return Intl.message(
      'Favourite',
      name: 'Favourite',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get Cart {
    return Intl.message(
      'Cart',
      name: 'Cart',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

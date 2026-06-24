import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fa'),
  ];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @blogs.
  ///
  /// In en, this message translates to:
  /// **'Blogs'**
  String get blogs;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @shilpa.
  ///
  /// In en, this message translates to:
  /// **'Shilpa Bhattacharya'**
  String get shilpa;

  /// No description provided for @developer.
  ///
  /// In en, this message translates to:
  /// **'Flutter Developer'**
  String get developer;

  /// No description provided for @developerDesc.
  ///
  /// In en, this message translates to:
  /// **'Flutter Developer with 4.6 years of experience building scalable mobile applications across FinTech, BFSI, EdTech, and SaaS domains. Delivered products serving 20M+ downloads and 1M+ users, with expertise in Flutter, Dart, BLoC, Clean Architecture, payments, performance optimization, and AI-powered application development.'**
  String get developerDesc;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @poweredByFlutter.
  ///
  /// In en, this message translates to:
  /// **'Powered by Flutter'**
  String get poweredByFlutter;

  /// No description provided for @projectsDesc.
  ///
  /// In en, this message translates to:
  /// **'A collection of apps and products that reflect my passion for building performant, scalable, and user-centric mobile experiences.'**
  String get projectsDesc;

  /// No description provided for @experiences.
  ///
  /// In en, this message translates to:
  /// **'Experiences'**
  String get experiences;

  /// No description provided for @experiencesDesc.
  ///
  /// In en, this message translates to:
  /// **'My professional journey, highlighting the roles, responsibilities, and achievements that have shaped my expertise in software development.'**
  String get experiencesDesc;

  /// No description provided for @recommendation.
  ///
  /// In en, this message translates to:
  /// **'Recommendation'**
  String get recommendation;

  /// No description provided for @recommendationDesc.
  ///
  /// In en, this message translates to:
  /// **'A collection of recommendations highlighting my technical skills, teamwork, and professional growth.'**
  String get recommendationDesc;

  /// No description provided for @skillsDesc.
  ///
  /// In en, this message translates to:
  /// **'A comprehensive overview of my technical skills, tools, and technologies I use to build scalable and efficient applications.'**
  String get skillsDesc;

  /// No description provided for @programmingLanguage.
  ///
  /// In en, this message translates to:
  /// **'Programming Language'**
  String get programmingLanguage;

  /// No description provided for @linkedin.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get linkedin;

  /// No description provided for @github.
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get github;

  /// No description provided for @instagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @frontend.
  ///
  /// In en, this message translates to:
  /// **'Frontend'**
  String get frontend;

  /// No description provided for @backend.
  ///
  /// In en, this message translates to:
  /// **'Backend'**
  String get backend;

  /// No description provided for @ai.
  ///
  /// In en, this message translates to:
  /// **'AI'**
  String get ai;

  /// No description provided for @dart.
  ///
  /// In en, this message translates to:
  /// **'Dart'**
  String get dart;

  /// No description provided for @kotlin.
  ///
  /// In en, this message translates to:
  /// **'Kotlin'**
  String get kotlin;

  /// No description provided for @java.
  ///
  /// In en, this message translates to:
  /// **'Java'**
  String get java;

  /// No description provided for @flutter.
  ///
  /// In en, this message translates to:
  /// **'Flutter'**
  String get flutter;

  /// No description provided for @bloc.
  ///
  /// In en, this message translates to:
  /// **'BLoC'**
  String get bloc;

  /// No description provided for @cubit.
  ///
  /// In en, this message translates to:
  /// **'Cubit'**
  String get cubit;

  /// No description provided for @figma.
  ///
  /// In en, this message translates to:
  /// **'Figma'**
  String get figma;

  /// No description provided for @devtool.
  ///
  /// In en, this message translates to:
  /// **'Dev Tools'**
  String get devtool;

  /// No description provided for @inspector.
  ///
  /// In en, this message translates to:
  /// **'Inspector'**
  String get inspector;

  /// No description provided for @platformChannel.
  ///
  /// In en, this message translates to:
  /// **'Platform Channel'**
  String get platformChannel;

  /// No description provided for @mvvm.
  ///
  /// In en, this message translates to:
  /// **'MVVM'**
  String get mvvm;

  /// No description provided for @mvc.
  ///
  /// In en, this message translates to:
  /// **'MVC'**
  String get mvc;

  /// No description provided for @cleanArchitecture.
  ///
  /// In en, this message translates to:
  /// **'Clean Architecture'**
  String get cleanArchitecture;

  /// No description provided for @solid.
  ///
  /// In en, this message translates to:
  /// **'SOLID'**
  String get solid;

  /// No description provided for @responsive.
  ///
  /// In en, this message translates to:
  /// **'Responsive UI'**
  String get responsive;

  /// No description provided for @stateManagement.
  ///
  /// In en, this message translates to:
  /// **'State Management'**
  String get stateManagement;

  /// No description provided for @performanceOptimise.
  ///
  /// In en, this message translates to:
  /// **'Performance Optimization'**
  String get performanceOptimise;

  /// No description provided for @tdd.
  ///
  /// In en, this message translates to:
  /// **'TDD'**
  String get tdd;

  /// No description provided for @firebase.
  ///
  /// In en, this message translates to:
  /// **'Firebase'**
  String get firebase;

  /// No description provided for @hive.
  ///
  /// In en, this message translates to:
  /// **'Hive'**
  String get hive;

  /// No description provided for @sqlite.
  ///
  /// In en, this message translates to:
  /// **'SQLite'**
  String get sqlite;

  /// No description provided for @mySql.
  ///
  /// In en, this message translates to:
  /// **'MySQL'**
  String get mySql;

  /// No description provided for @api.
  ///
  /// In en, this message translates to:
  /// **'API'**
  String get api;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment Integration'**
  String get payment;

  /// No description provided for @di.
  ///
  /// In en, this message translates to:
  /// **'Dependency Injection'**
  String get di;

  /// No description provided for @postman.
  ///
  /// In en, this message translates to:
  /// **'Postman'**
  String get postman;

  /// No description provided for @git.
  ///
  /// In en, this message translates to:
  /// **'Git'**
  String get git;

  /// No description provided for @openAi.
  ///
  /// In en, this message translates to:
  /// **'OpenAI'**
  String get openAi;

  /// No description provided for @claude.
  ///
  /// In en, this message translates to:
  /// **'Claude'**
  String get claude;

  /// No description provided for @gemini.
  ///
  /// In en, this message translates to:
  /// **'Gemini'**
  String get gemini;

  /// No description provided for @chatbot.
  ///
  /// In en, this message translates to:
  /// **'Chatbot'**
  String get chatbot;

  /// No description provided for @prompt.
  ///
  /// In en, this message translates to:
  /// **'Prompt Engineering'**
  String get prompt;

  /// No description provided for @frameworks.
  ///
  /// In en, this message translates to:
  /// **'Frameworks'**
  String get frameworks;

  /// No description provided for @architecture.
  ///
  /// In en, this message translates to:
  /// **'Architecture'**
  String get architecture;

  /// No description provided for @ui.
  ///
  /// In en, this message translates to:
  /// **'UI'**
  String get ui;

  /// No description provided for @database.
  ///
  /// In en, this message translates to:
  /// **'Database'**
  String get database;

  /// No description provided for @integration.
  ///
  /// In en, this message translates to:
  /// **'Integration'**
  String get integration;

  /// No description provided for @aiTools.
  ///
  /// In en, this message translates to:
  /// **'AI Tools'**
  String get aiTools;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'fa'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

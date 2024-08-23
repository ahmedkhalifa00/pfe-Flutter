import 'package:flutterproject/Pages/Registration/resetpasswordpage.dart';

import 'package:flutterproject/Pages/chat_page.dart';

import 'package:flutterproject/Pages/setup/configure_kid_phone_page.dart';
import 'package:flutterproject/Pages/setup/download_kid_app_page.dart';
import 'package:flutterproject/Pages/map/home_location_page.dart';
import 'package:flutterproject/Pages/OnBoarding/onboarding_page.dart';
import 'package:flutterproject/Pages/Registration/log_in.dart';
import 'package:flutterproject/Pages/Registration/sign_up.dart';
import 'package:flutterproject/Pages/MainPage.dart';
import 'package:flutterproject/Pages/setup/welcome_page.dart';
import 'package:flutterproject/Pages/volume_notification_page.dart';

import 'package:flutterproject/Resources/strings_manager.dart';
import 'package:flutter/material.dart';
import '../Pages/Splash/splash_page.dart';

class Routes {
  static const String splash = "/";
  static const String onboarding = "onboarding";
  static const String login = "login";
  static const String signUp = "sign up";
  static const String home = "dashboard";
  static const String chat = "chat";
  static const String addhome = "add_home";
  static const String welcome = "welcome";
  static const String configureKidPhone = "configure_kid_phone";
  static const String downloadKidApp = "download_kid_app";

  static const String volumeNotification = "volume_notification";

  static const String resetPassword = 'reset-password';
  static const String movementhistory = '/movement-history';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => MainPage());
      case Routes.chat:
        return MaterialPageRoute(builder: (_) => ChatPage());
      case Routes.welcome:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case Routes.configureKidPhone:
        return MaterialPageRoute(builder: (_) => ConfigureKidPhonePage());
      case Routes.downloadKidApp:
        return MaterialPageRoute(builder: (_) => DownloadKidAppPage());

      case Routes.volumeNotification:
        return MaterialPageRoute(builder: (_) => VolumeNotificationPage());

      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => ResetPasswordPage());
      /*     case Routes.movementhistory:
        return MaterialPageRoute(builder: (_) => MovementHistoryPage()); */
      case Routes.addhome:
        return MaterialPageRoute(
            builder: (_) => HomeLocationPage(
                  kidId: '123',
                ));
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}

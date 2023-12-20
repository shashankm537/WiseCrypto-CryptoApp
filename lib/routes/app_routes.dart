import 'package:flutter/material.dart';
import 'package:wise_crypto/presentation/first_screen/first_screen.dart';
import 'package:wise_crypto/presentation/login_screen/login_screen.dart';
import 'package:wise_crypto/presentation/register_data_screen/register_data_screen.dart';
import 'package:wise_crypto/presentation/register_data_one_screen/register_data_one_screen.dart';
import 'package:wise_crypto/presentation/home_container_screen/home_container_screen.dart';
import 'package:wise_crypto/presentation/notifications_screen/notifications_screen.dart';
import 'package:wise_crypto/presentation/transaction_list_tab_container_screen/transaction_list_tab_container_screen.dart';
import 'package:wise_crypto/presentation/privacy_screen/privacy_screen.dart';
import 'package:wise_crypto/presentation/payment_options_screen/payment_options_screen.dart';
import 'package:wise_crypto/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:wise_crypto/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String firstScreen = '/first_screen';

  static const String loginScreen = '/login_screen';

  static const String registerDataScreen = '/register_data_screen';

  static const String registerDataOneScreen = '/register_data_one_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String marketCapPage = '/market_cap_page';

  static const String marketCapTabContainerPage =
      '/market_cap_tab_container_page';

  static const String profilePage = '/profile_page';

  static const String transactionListPage = '/transaction_list_page';

  static const String transactionListTabContainerScreen =
      '/transaction_list_tab_container_screen';

  static const String privacyScreen = '/privacy_screen';

  static const String paymentOptionsScreen = '/payment_options_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        firstScreen: FirstScreen.builder,
        loginScreen: LoginScreen.builder,
        registerDataScreen: RegisterDataScreen.builder,
        registerDataOneScreen: RegisterDataOneScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        transactionListTabContainerScreen:
            TransactionListTabContainerScreen.builder,
        privacyScreen: PrivacyScreen.builder,
        paymentOptionsScreen: PaymentOptionsScreen.builder,
        notificationSettingsScreen: NotificationSettingsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: FirstScreen.builder
      };
}

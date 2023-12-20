import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/privacy_screen/models/privacy_model.dart';

/// A provider class for the PrivacyScreen.
///
/// This provider manages the state of the PrivacyScreen, including the
/// current privacyModelObj
class PrivacyProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  PrivacyModel privacyModelObj = PrivacyModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    newpasswordController.dispose();
  }
}

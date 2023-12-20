import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/register_data_one_screen/models/register_data_one_model.dart';

/// A provider class for the RegisterDataOneScreen.
///
/// This provider manages the state of the RegisterDataOneScreen, including the
/// current registerDataOneModelObj
class RegisterDataOneProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  RegisterDataOneModel registerDataOneModelObj = RegisterDataOneModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  bool termsAndConditionsCheckbox = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    termsAndConditionsCheckbox = value;
    notifyListeners();
  }
}

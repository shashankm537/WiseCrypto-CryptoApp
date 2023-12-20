import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/register_data_screen/models/register_data_model.dart';

/// A provider class for the RegisterDataScreen.
///
/// This provider manages the state of the RegisterDataScreen, including the
/// current registerDataModelObj
class RegisterDataProvider extends ChangeNotifier {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  RegisterDataModel registerDataModelObj = RegisterDataModel();

  @override
  void dispose() {
    super.dispose();
    fullNameController.dispose();
    phoneNumberController.dispose();
  }
}

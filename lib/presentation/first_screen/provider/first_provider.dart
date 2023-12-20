import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/first_screen/models/first_model.dart';

/// A provider class for the FirstScreen.
///
/// This provider manages the state of the FirstScreen, including the
/// current firstModelObj
class FirstProvider extends ChangeNotifier {
  FirstModel firstModelObj = FirstModel();

  @override
  void dispose() {
    super.dispose();
  }
}

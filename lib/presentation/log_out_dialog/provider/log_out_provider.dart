import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/log_out_dialog/models/log_out_model.dart';

/// A provider class for the LogOutDialog.
///
/// This provider manages the state of the LogOutDialog, including the
/// current logOutModelObj
class LogOutProvider extends ChangeNotifier {
  LogOutModel logOutModelObj = LogOutModel();

  @override
  void dispose() {
    super.dispose();
  }
}

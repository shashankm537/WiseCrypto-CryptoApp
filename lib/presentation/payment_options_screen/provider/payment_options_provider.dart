import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/payment_options_screen/models/payment_options_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the PaymentOptionsScreen.
///
/// This provider manages the state of the PaymentOptionsScreen, including the
/// current paymentOptionsModelObj

// ignore_for_file: must_be_immutable
class PaymentOptionsProvider extends ChangeNotifier {
  PaymentOptionsModel paymentOptionsModelObj = PaymentOptionsModel();

  @override
  void dispose() {
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/market_cap_page/models/market_cap_model.dart';
import '../models/cryptoinfo1_item_model.dart';

/// A provider class for the MarketCapPage.
///
/// This provider manages the state of the MarketCapPage, including the
/// current marketCapModelObj

// ignore_for_file: must_be_immutable
class MarketCapProvider extends ChangeNotifier {
  MarketCapModel marketCapModelObj = MarketCapModel();

  @override
  void dispose() {
    super.dispose();
  }
}

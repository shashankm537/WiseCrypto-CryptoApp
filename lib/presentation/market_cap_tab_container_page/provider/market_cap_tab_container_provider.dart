import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/market_cap_tab_container_page/models/market_cap_tab_container_model.dart';

/// A provider class for the MarketCapTabContainerPage.
///
/// This provider manages the state of the MarketCapTabContainerPage, including the
/// current marketCapTabContainerModelObj
class MarketCapTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  MarketCapTabContainerModel marketCapTabContainerModelObj =
      MarketCapTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}

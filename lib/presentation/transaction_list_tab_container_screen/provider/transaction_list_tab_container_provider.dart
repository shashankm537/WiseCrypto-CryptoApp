import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/transaction_list_tab_container_screen/models/transaction_list_tab_container_model.dart';

/// A provider class for the TransactionListTabContainerScreen.
///
/// This provider manages the state of the TransactionListTabContainerScreen, including the
/// current transactionListTabContainerModelObj
class TransactionListTabContainerProvider extends ChangeNotifier {
  TransactionListTabContainerModel transactionListTabContainerModelObj =
      TransactionListTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

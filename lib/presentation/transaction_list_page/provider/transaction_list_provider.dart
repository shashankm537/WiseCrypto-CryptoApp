import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/transaction_list_page/models/transaction_list_model.dart';
import '../models/transactiondetails_item_model.dart';

/// A provider class for the TransactionListPage.
///
/// This provider manages the state of the TransactionListPage, including the
/// current transactionListModelObj

// ignore_for_file: must_be_immutable
class TransactionListProvider extends ChangeNotifier {
  TransactionListModel transactionListModelObj = TransactionListModel();

  @override
  void dispose() {
    super.dispose();
  }
}

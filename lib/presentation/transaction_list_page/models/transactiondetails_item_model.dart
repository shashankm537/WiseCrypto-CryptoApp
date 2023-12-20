import '../../../core/app_export.dart';

/// This class is used in the [transactiondetails_item_widget] screen.
class TransactiondetailsItemModel {
  TransactiondetailsItemModel({
    this.transactionCode,
    this.componentStatus,
    this.clock,
    this.addBalance,
    this.balanceAmount,
    this.transactionDate,
    this.transactionAmount,
    this.id,
  }) {
    transactionCode = transactionCode ?? "Transaction Code: TS-10283";
    componentStatus = componentStatus ?? "Pending";
    clock = clock ?? ImageConstant.imgClock;
    addBalance = addBalance ?? "Add Balance";
    balanceAmount = balanceAmount ?? "5";
    transactionDate = transactionDate ?? "29 Nov";
    transactionAmount = transactionAmount ?? "12.30";
    id = id ?? "";
  }

  String? transactionCode;

  String? componentStatus;

  String? clock;

  String? addBalance;

  String? balanceAmount;

  String? transactionDate;

  String? transactionAmount;

  String? id;
}

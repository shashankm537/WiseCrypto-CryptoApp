import '../../../core/app_export.dart';
import 'transactiondetails_item_model.dart';

class TransactionListModel {
  List<TransactiondetailsItemModel> transactiondetailsItemList = [
    TransactiondetailsItemModel(
        transactionCode: "Transaction Code: TS-10283",
        componentStatus: "Pending",
        clock: ImageConstant.imgClock,
        addBalance: "Add Balance",
        balanceAmount: "5",
        transactionDate: "29 Nov",
        transactionAmount: "12.30"),
    TransactiondetailsItemModel(
        transactionCode: "Transaction Code: TS-24932",
        clock: ImageConstant.imgCheckmark,
        addBalance: "Add Balance",
        balanceAmount: "5",
        transactionDate: "29 Nov",
        transactionAmount: "12.30"),
    TransactiondetailsItemModel(
        transactionCode: "Transaction Code : TS-32418",
        clock: ImageConstant.imgCloseSquare,
        addBalance: "Add Balance",
        balanceAmount: "5",
        transactionDate: "29 Nov",
        transactionAmount: "12.30"),
    TransactiondetailsItemModel(
        transactionCode: "Transaction Code : TP-12342",
        clock: ImageConstant.imgCheckmark,
        addBalance: "Sell",
        transactionDate: "29 Nov",
        transactionAmount: "12.30"),
    TransactiondetailsItemModel(
        transactionCode: "Transaction Code : TP-38284",
        clock: ImageConstant.imgCheckmark,
        addBalance: "Purchase",
        transactionDate: "29 Nov",
        transactionAmount: "12.30")
  ];
}

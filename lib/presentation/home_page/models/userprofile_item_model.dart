import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.iconButton,
    this.btcText,
    this.bitcoinText,
    this.portfolioText,
    this.portfolioAmountText,
    this.btcAmountText,
    this.id,
  }) {
    iconButton = iconButton ?? ImageConstant.imgFrame976;
    btcText = btcText ?? "BTC";
    bitcoinText = bitcoinText ?? "Bitcoin";
    portfolioText = portfolioText ?? "Portofolio";
    portfolioAmountText = portfolioAmountText ?? "26.46";
    btcAmountText = btcAmountText ?? "0.0012 BTC";
    id = id ?? "";
  }

  String? iconButton;

  String? btcText;

  String? bitcoinText;

  String? portfolioText;

  String? portfolioAmountText;

  String? btcAmountText;

  String? id;
}

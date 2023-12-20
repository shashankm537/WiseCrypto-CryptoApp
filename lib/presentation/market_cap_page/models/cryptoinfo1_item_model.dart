import '../../../core/app_export.dart';

/// This class is used in the [cryptoinfo1_item_widget] screen.
class Cryptoinfo1ItemModel {
  Cryptoinfo1ItemModel({
    this.cryptoImage,
    this.cryptoName,
    this.cryptoFullName,
    this.cryptoPrice,
    this.id,
  }) {
    cryptoImage = cryptoImage ?? ImageConstant.imgImage1;
    cryptoName = cryptoName ?? "BTC/BUSD";
    cryptoFullName = cryptoFullName ?? "Bitcoin";
    cryptoPrice = cryptoPrice ?? "54,382.64";
    id = id ?? "";
  }

  String? cryptoImage;

  String? cryptoName;

  String? cryptoFullName;

  String? cryptoPrice;

  String? id;
}

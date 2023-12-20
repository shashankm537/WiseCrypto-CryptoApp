import '../../../core/app_export.dart';

/// This class is used in the [cryptoinfo_item_widget] screen.
class CryptoinfoItemModel {
  CryptoinfoItemModel({
    this.btcbusd,
    this.coinName,
    this.coinFullName,
    this.coinPrice,
    this.id,
  }) {
    btcbusd = btcbusd ?? ImageConstant.imgImage1;
    coinName = coinName ?? "BTC/BUSD";
    coinFullName = coinFullName ?? "Bitcoin";
    coinPrice = coinPrice ?? "54,382.64";
    id = id ?? "";
  }

  String? btcbusd;

  String? coinName;

  String? coinFullName;

  String? coinPrice;

  String? id;
}

import '../../../core/app_export.dart';
import 'cryptoinfo1_item_model.dart';

class MarketCapModel {
  List<Cryptoinfo1ItemModel> cryptoinfo1ItemList = [
    Cryptoinfo1ItemModel(
        cryptoImage: ImageConstant.imgImage1,
        cryptoName: "BTC/BUSD",
        cryptoFullName: "Bitcoin",
        cryptoPrice: "54,382.64"),
    Cryptoinfo1ItemModel(
        cryptoImage: ImageConstant.imgImage2,
        cryptoName: "ETH/BUSD",
        cryptoFullName: "Etherium",
        cryptoPrice: "4,145.61"),
    Cryptoinfo1ItemModel(
        cryptoImage: ImageConstant.imgImage5,
        cryptoName: "LTC/BUSD",
        cryptoFullName: "Litecoin",
        cryptoPrice: "207.3"),
    Cryptoinfo1ItemModel(
        cryptoImage: ImageConstant.imgImage535x40,
        cryptoName: "SOL/BUSD",
        cryptoFullName: "Solana",
        cryptoPrice: "227.93"),
    Cryptoinfo1ItemModel(
        cryptoImage: ImageConstant.imgImage4,
        cryptoName: "BNB/BUSD",
        cryptoFullName: "Binance Coin",
        cryptoPrice: "610.5"),
    Cryptoinfo1ItemModel(
        cryptoImage: ImageConstant.imgImage6,
        cryptoName: "XRP/BUSD",
        cryptoFullName: "Ripple",
        cryptoPrice: "1.0358")
  ];
}

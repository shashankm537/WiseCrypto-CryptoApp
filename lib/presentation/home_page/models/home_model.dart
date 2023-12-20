import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';
import 'cryptoinfo_item_model.dart';

class HomeModel {
  List<UserprofileItemModel> userprofileItemList = [
    UserprofileItemModel(
        iconButton: ImageConstant.imgFrame976,
        btcText: "BTC",
        bitcoinText: "Bitcoin",
        portfolioText: "Portofolio",
        portfolioAmountText: "26.46",
        btcAmountText: "0.0012 BTC"),
    UserprofileItemModel(
        iconButton: ImageConstant.imgFrame97640x40,
        portfolioText: "Portofolio",
        portfolioAmountText: "37.30",
        btcAmountText: "0.009 ETH")
  ];

  List<CryptoinfoItemModel> cryptoinfoItemList = [
    CryptoinfoItemModel(
        btcbusd: ImageConstant.imgImage1,
        coinName: "BTC/BUSD",
        coinFullName: "Bitcoin",
        coinPrice: "54,382.64"),
    CryptoinfoItemModel(
        btcbusd: ImageConstant.imgImage2,
        coinName: "ETH/BUSD",
        coinFullName: "Etherium",
        coinPrice: "4,145.61"),
    CryptoinfoItemModel(
        btcbusd: ImageConstant.imgImage5,
        coinName: "LTC/BUSD",
        coinFullName: "Litecoin",
        coinPrice: "207.3"),
    CryptoinfoItemModel(
        btcbusd: ImageConstant.imgImage535x40,
        coinName: "SOL/BUSD",
        coinFullName: "Solana",
        coinPrice: "227.93"),
    CryptoinfoItemModel(
        btcbusd: ImageConstant.imgImage6,
        coinName: "XRP/BUSD",
        coinFullName: "Ripple",
        coinPrice: "1.0358")
  ];
}

import '../market_cap_page/widgets/cryptoinfo1_item_widget.dart';
import 'models/cryptoinfo1_item_model.dart';
import 'models/market_cap_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'provider/market_cap_provider.dart';

// ignore_for_file: must_be_immutable
class MarketCapPage extends StatefulWidget {
  const MarketCapPage({Key? key})
      : super(
          key: key,
        );

  @override
  MarketCapPageState createState() => MarketCapPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MarketCapProvider(),
      child: MarketCapPage(),
    );
  }
}

class MarketCapPageState extends State<MarketCapPage>
    with AutomaticKeepAliveClientMixin<MarketCapPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildCryptoInfo(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCryptoInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Consumer<MarketCapProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 8.v,
              );
            },
            itemCount: provider.marketCapModelObj.cryptoinfo1ItemList.length,
            itemBuilder: (context, index) {
              Cryptoinfo1ItemModel model =
                  provider.marketCapModelObj.cryptoinfo1ItemList[index];
              return Cryptoinfo1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}

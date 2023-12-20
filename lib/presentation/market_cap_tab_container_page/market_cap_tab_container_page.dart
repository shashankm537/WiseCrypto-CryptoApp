import 'models/market_cap_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/market_cap_page/market_cap_page.dart';
import 'package:wise_crypto/widgets/custom_search_view.dart';
import 'provider/market_cap_tab_container_provider.dart';

// ignore_for_file: must_be_immutable
class MarketCapTabContainerPage extends StatefulWidget {
  const MarketCapTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  MarketCapTabContainerPageState createState() =>
      MarketCapTabContainerPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MarketCapTabContainerProvider(),
      child: MarketCapTabContainerPage(),
    );
  }
}

class MarketCapTabContainerPageState extends State<MarketCapTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 52.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Selector<MarketCapTabContainerProvider,
                    TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(context),
              SizedBox(
                height: 592.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    MarketCapPage(),
                    MarketCapPage(),
                    MarketCapPage(),
                    MarketCapPage(),
                    MarketCapPage(),
                    MarketCapPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 31.v,
      width: 360.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: theme.colorScheme.primary,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_favorite".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_fiat_pasar".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_market_etfs".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_bnb_market".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_btc_market".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_alts_market".tr,
            ),
          ),
        ],
      ),
    );
  }
}

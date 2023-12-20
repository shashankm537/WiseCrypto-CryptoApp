import 'models/transaction_list_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/presentation/transaction_list_page/transaction_list_page.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_image.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_subtitle.dart';
import 'package:wise_crypto/widgets/app_bar/custom_app_bar.dart';
import 'provider/transaction_list_tab_container_provider.dart';

class TransactionListTabContainerScreen extends StatefulWidget {
  const TransactionListTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionListTabContainerScreenState createState() =>
      TransactionListTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionListTabContainerProvider(),
      child: TransactionListTabContainerScreen(),
    );
  }
}

class TransactionListTabContainerScreenState
    extends State<TransactionListTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 758.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      TransactionListPage(),
                      TransactionListPage(),
                      TransactionListPage(),
                      TransactionListPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 88.v,
      centerTitle: true,
      title: Container(
        width: 372.h,
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 16.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgNavigationNavigation,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AppbarImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.only(top: 32.v),
            ),
            AppbarSubtitle(
              text: "msg_transaction_list".tr,
              margin: EdgeInsets.fromLTRB(10.h, 33.v, 190.h, 1.v),
            ),
          ],
        ),
      ),
      styleType: Style.bgStyle,
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 31.v,
      width: 346.h,
      margin: EdgeInsets.only(left: 8.h),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
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
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_balance".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_purchase".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_sell".tr,
            ),
          ),
        ],
      ),
    );
  }
}

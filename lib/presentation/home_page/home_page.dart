import '../home_page/widgets/cryptoinfo_item_widget.dart';
import '../home_page/widgets/userprofile_item_widget.dart';
import 'models/cryptoinfo_item_model.dart';
import 'models/home_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_title.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wise_crypto/widgets/app_bar/custom_app_bar.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';
import 'provider/home_provider.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 15.v),
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildEightyOne(context),
                  SizedBox(height: 24.v),
                  _buildFiftySeven(context),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl_watchlist".tr,
                    style: CustomTextStyles.titleSmallMulishSemiBold,
                  ),
                  SizedBox(height: 8.v),
                  _buildCryptoInfo(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 55.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 7.v,
          bottom: 8.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Column(
          children: [
            AppbarSubtitleTwo(
              text: "lbl_hello".tr,
              margin: EdgeInsets.only(right: 50.h),
            ),
            AppbarTitle(
              text: "lbl_natasha".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame968,
          margin: EdgeInsets.fromLTRB(15.h, 15.v, 15.h, 16.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 73.h,
      text: "lbl_15_3".tr,
      margin: EdgeInsets.symmetric(vertical: 15.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowupright,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.labelLargeGreenA700,
    );
  }

  /// Section Widget
  Widget _buildTambah(BuildContext context) {
    return CustomElevatedButton(
      height: 31.v,
      width: 63.h,
      text: "lbl_tambah".tr,
      margin: EdgeInsets.only(
        top: 14.v,
        bottom: 15.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL8,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildEightyOne(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 345.h,
                padding: EdgeInsets.all(24.h),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup50,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_total_portofolio".tr,
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainerSemiBold,
                        ),
                        Text(
                          "lbl_56_98".tr,
                          style:
                              CustomTextStyles.headlineLargeOnPrimaryContainer,
                        ),
                      ],
                    ),
                    _buildFrame(context),
                  ],
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(left: 8.h),
              color: theme.colorScheme.onPrimaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Container(
                height: 112.v,
                width: 345.h,
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMaskGroup,
                      height: 112.v,
                      width: 345.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 297.h,
                        margin: EdgeInsets.symmetric(
                          horizontal: 24.h,
                          vertical: 26.v,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_saldo_kamu".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.titleMediumGray700,
                                ),
                                Text(
                                  "lbl_10".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.headlineLargeGray700,
                                ),
                              ],
                            ),
                            _buildTambah(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_your_assets".tr,
                style: CustomTextStyles.titleSmallMulishSemiBold,
              ),
              Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.labelLargePrimary,
              ),
            ],
          ),
        ),
        SizedBox(height: 7.v),
        SizedBox(
          height: 119.v,
          child: Consumer<HomeProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 175.0.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: theme.colorScheme.onError,
                      indent: 8.0.h,
                      endIndent: 8.0.h,
                    ),
                  );
                },
                itemCount: provider.homeModelObj.userprofileItemList.length,
                itemBuilder: (context, index) {
                  UserprofileItemModel model =
                      provider.homeModelObj.userprofileItemList[index];
                  return UserprofileItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCryptoInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 17.h),
      child: Consumer<HomeProvider>(
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
            itemCount: provider.homeModelObj.cryptoinfoItemList.length,
            itemBuilder: (context, index) {
              CryptoinfoItemModel model =
                  provider.homeModelObj.cryptoinfoItemList[index];
              return CryptoinfoItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}

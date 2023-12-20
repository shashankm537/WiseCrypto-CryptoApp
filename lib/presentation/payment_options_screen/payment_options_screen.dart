import '../payment_options_screen/widgets/userprofile1_item_widget.dart';
import 'models/payment_options_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_leading_image.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wise_crypto/widgets/app_bar/custom_app_bar.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';
import 'provider/payment_options_provider.dart';

class PaymentOptionsScreen extends StatefulWidget {
  const PaymentOptionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentOptionsScreenState createState() => PaymentOptionsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentOptionsProvider(),
      child: PaymentOptionsScreen(),
    );
  }
}

class PaymentOptionsScreenState extends State<PaymentOptionsScreen> {
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 15.v,
          ),
          child: Column(
            children: [
              _buildUserProfile(context),
              Spacer(),
              SizedBox(height: 16.v),
              _buildOne(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrame(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "lbl_payment_options".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Consumer<PaymentOptionsProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount:
                provider.paymentOptionsModelObj.userprofile1ItemList.length,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model =
                  provider.paymentOptionsModelObj.userprofile1ItemList[index];
              return Userprofile1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      width: 345.h,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 12.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup1,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Container(
            width: 305.h,
            margin: EdgeInsets.only(right: 13.h),
            child: Text(
              "msg_note_you_can_add".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeGray50.copyWith(
                height: 1.30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 16.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: CustomElevatedButton(
        text: "msg_add_new_payment".tr,
      ),
    );
  }
}

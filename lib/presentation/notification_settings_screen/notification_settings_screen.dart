import 'models/notification_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_leading_image.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wise_crypto/widgets/app_bar/custom_app_bar.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';
import 'package:wise_crypto/widgets/custom_switch.dart';
import 'provider/notification_settings_provider.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationSettingsScreenState createState() =>
      NotificationSettingsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationSettingsProvider(),
      child: NotificationSettingsScreen(),
    );
  }
}

class NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
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
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            children: [
              SizedBox(height: 11.v),
              _buildNotificationSettings(context),
              Spacer(),
            ],
          ),
        ),
        bottomNavigationBar: _buildSaveButton(context),
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
        text: "msg_notification_settings2".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationSettings(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 19.h,
        right: 11.h,
      ),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_notification_type".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 13.v),
          Divider(
            color: theme.colorScheme.onError,
          ),
          SizedBox(height: 15.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_portofolio".tr,
                  style: CustomTextStyles.titleMediumSemiBold,
                ),
                Selector<NotificationSettingsProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch,
                  builder: (context, isSelectedSwitch, child) {
                    return CustomSwitch(
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context
                            .read<NotificationSettingsProvider>()
                            .changeSwitchBox1(value);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_popular".tr,
                    style: CustomTextStyles.titleMediumSemiBold,
                  ),
                ),
                Selector<NotificationSettingsProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch1,
                  builder: (context, isSelectedSwitch1, child) {
                    return CustomSwitch(
                      margin: EdgeInsets.symmetric(vertical: 2.v),
                      value: isSelectedSwitch1,
                      onChange: (value) {
                        context
                            .read<NotificationSettingsProvider>()
                            .changeSwitchBox2(value);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_watchlist".tr,
                  style: CustomTextStyles.titleMediumSemiBold,
                ),
                Selector<NotificationSettingsProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch2,
                  builder: (context, isSelectedSwitch2, child) {
                    return CustomSwitch(
                      value: isSelectedSwitch2,
                      onChange: (value) {
                        context
                            .read<NotificationSettingsProvider>()
                            .changeSwitchBox3(value);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_promotion".tr,
                  style: CustomTextStyles.titleMediumSemiBold,
                ),
                Selector<NotificationSettingsProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch3,
                  builder: (context, isSelectedSwitch3, child) {
                    return CustomSwitch(
                      value: isSelectedSwitch3,
                      onChange: (value) {
                        context
                            .read<NotificationSettingsProvider>()
                            .changeSwitchBox4(value);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 16.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: CustomElevatedButton(
        text: "lbl_save".tr,
      ),
    );
  }
}

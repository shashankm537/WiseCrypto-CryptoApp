import '../models/appbar_item_model.dart';
import '../models/navigationlist_item_model.dart';
import '../widgets/appbar_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_leading_image.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wise_crypto/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class NavigationlistItemWidget extends StatelessWidget {
  NavigationlistItemWidget(
    this.navigationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NavigationlistItemModel navigationlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgNavigationNavigation,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 32.v),
          CustomAppBar(
            height: 24.v,
            leadingWidth: 39.h,
            leading: AppbarLeadingImage(
              imagePath: navigationlistItemModelObj?.notificationImage,
              margin: EdgeInsets.only(left: 15.h),
            ),
            title: AppbarSubtitleOne(
              text: "lbl_notifications".tr,
              margin: EdgeInsets.only(left: 10.h),
            ),
            itemCount: navigationlistItemModelObj.appbarItemList!.length,
            itemBuilder: (context, index) {
              AppbarItemModel model =
                  navigationlistItemModelObj.appbarItemList![index];
              return AppbarItemWidget(
                model,
              );
            },
          ),
        ],
      ),
    );
  }
}

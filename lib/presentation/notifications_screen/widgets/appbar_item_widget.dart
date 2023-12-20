import '../models/appbar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';

// ignore: must_be_immutable
class AppbarItemWidget extends StatelessWidget {
  AppbarItemWidget(
    this.appbarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AppbarItemModel appbarItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: appbarItemModelObj?.notificationImage,
      height: 24.adaptSize,
      width: 24.adaptSize,
      margin: EdgeInsets.only(left: 15.h),
    );
  }
}

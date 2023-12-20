import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';
import 'package:wise_crypto/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 191.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.fillGray,
                child: CustomImageView(
                  imagePath: userprofileItemModelObj?.iconButton,
                ),
              ),
              Container(
                width: 111.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          userprofileItemModelObj.btcText!,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          userprofileItemModelObj.bitcoinText!,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ],
                    ),
                    CustomElevatedButton(
                      height: 22.v,
                      width: 55.h,
                      text: "lbl_15_3".tr,
                      margin: EdgeInsets.symmetric(vertical: 5.v),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 2.h),
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgArrowuprightOnprimarycontainer,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillGreenA,
                      buttonTextStyle: theme.textTheme.labelMedium!,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    userprofileItemModelObj.portfolioText!,
                    style: CustomTextStyles.bodySmallOnError,
                  ),
                  Text(
                    userprofileItemModelObj.portfolioAmountText!,
                    style: CustomTextStyles.titleSmallMulish,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 58.h,
                  top: 15.v,
                  bottom: 2.v,
                ),
                child: Text(
                  userprofileItemModelObj.btcAmountText!,
                  style: CustomTextStyles.labelMediumGray700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

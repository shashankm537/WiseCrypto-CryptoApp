import '../models/cryptoinfo1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Cryptoinfo1ItemWidget extends StatelessWidget {
  Cryptoinfo1ItemWidget(
    this.cryptoinfo1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Cryptoinfo1ItemModel cryptoinfo1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: cryptoinfo1ItemModelObj?.cryptoImage,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cryptoinfo1ItemModelObj.cryptoName!,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 4.v),
                Text(
                  cryptoinfo1ItemModelObj.cryptoFullName!,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: Column(
              children: [
                Text(
                  cryptoinfo1ItemModelObj.cryptoPrice!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                CustomElevatedButton(
                  height: 22.v,
                  width: 55.h,
                  text: "lbl_15_3".tr,
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
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

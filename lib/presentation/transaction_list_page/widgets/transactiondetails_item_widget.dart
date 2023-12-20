import '../models/transactiondetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransactiondetailsItemWidget extends StatelessWidget {
  TransactiondetailsItemWidget(
    this.transactiondetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransactiondetailsItemModel transactiondetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Text(
                    transactiondetailsItemModelObj.transactionCode!,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  width: 62.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillYellow.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: Text(
                    transactiondetailsItemModelObj.componentStatus!,
                    style: CustomTextStyles.bodySmallYellow700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 31.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillYellow,
                  child: CustomImageView(
                    imagePath: transactiondetailsItemModelObj?.clock,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactiondetailsItemModelObj.addBalance!,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        transactiondetailsItemModelObj.balanceAmount!,
                        style: CustomTextStyles.titleSmallMulishGray700,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  child: Column(
                    children: [
                      Text(
                        transactiondetailsItemModelObj.transactionDate!,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 3.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          transactiondetailsItemModelObj.transactionAmount!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

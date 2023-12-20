import 'models/log_out_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';
import 'package:wise_crypto/widgets/custom_outlined_button.dart';
import 'provider/log_out_provider.dart';

// ignore_for_file: must_be_immutable
class LogOutDialog extends StatefulWidget {
  const LogOutDialog({Key? key})
      : super(
          key: key,
        );

  @override
  LogOutDialogState createState() => LogOutDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LogOutProvider(),
      child: LogOutDialog(),
    );
  }
}

class LogOutDialogState extends State<LogOutDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 314.h,
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 64.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVideoCamera,
            height: 80.v,
            width: 82.h,
          ),
          SizedBox(height: 39.v),
          Text(
            "msg_are_you_sure_you".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomOutlinedButton(
                  width: 102.h,
                  text: "lbl_cancel".tr,
                ),
                CustomElevatedButton(
                  height: 36.v,
                  width: 109.h,
                  text: "lbl_log_out".tr,
                  buttonStyle: CustomButtonStyles.fillRedTL4,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }
}

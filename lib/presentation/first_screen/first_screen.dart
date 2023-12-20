import 'models/first_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'provider/first_provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FirstScreenState createState() => FirstScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FirstProvider(),
      child: FirstScreen(),
    );
  }
}

class FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, -0.03),
              end: Alignment(0.5, 1.67),
              colors: [
                appTheme.green700,
                appTheme.lightBlue600,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 52.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 54.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: 94.v,
                  width: 269.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                SizedBox(height: 3.v),
                Container(
                  width: 204.h,
                  margin: EdgeInsets.symmetric(horizontal: 33.h),
                  child: Text(
                    "msg_trusted_by_millions".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'models/privacy_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/core/utils/validation_functions.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_leading_image.dart';
import 'package:wise_crypto/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wise_crypto/widgets/app_bar/custom_app_bar.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';
import 'package:wise_crypto/widgets/custom_text_form_field.dart';
import 'provider/privacy_provider.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PrivacyScreenState createState() => PrivacyScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrivacyProvider(),
      child: PrivacyScreen(),
    );
  }
}

class PrivacyScreenState extends State<PrivacyScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 11.v,
            ),
            child: Column(
              children: [
                _buildInputEmail(context),
                SizedBox(height: 15.v),
                _buildInputOldPassword(context),
                SizedBox(height: 15.v),
                _buildInputNewPassword(context),
                SizedBox(height: 5.v),
              ],
            ),
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
        text: "lbl_privacy".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 7.v),
          Selector<PrivacyProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.emailController,
            builder: (context, emailController, child) {
              return CustomTextFormField(
                controller: emailController,
                hintText: "lbl_abcde_gmail_com".tr,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputOldPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_old_password".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 7.v),
          Selector<PrivacyProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.passwordController,
            builder: (context, passwordController, child) {
              return CustomTextFormField(
                controller: passwordController,
                hintText: "lbl".tr,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: true,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputNewPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_new_password".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 7.v),
          Selector<PrivacyProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.newpasswordController,
            builder: (context, newpasswordController, child) {
              return CustomTextFormField(
                controller: newpasswordController,
                hintText: "lbl2".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: true,
              );
            },
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
        text: "lbl_save".tr,
      ),
    );
  }
}

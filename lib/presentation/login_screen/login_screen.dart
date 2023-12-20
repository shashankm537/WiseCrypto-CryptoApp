import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/core/utils/validation_functions.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';
import 'package:wise_crypto/widgets/custom_text_form_field.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginScreenState createState() => LoginScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: LoginScreen(),
    );
  }
}

class LoginScreenState extends State<LoginScreen> {
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
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 48.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogoGray900,
                  height: 64.v,
                  width: 182.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                SizedBox(height: 89.v),
                Text(
                  "lbl_login".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_trusted_by_millions".tr,
                  style: CustomTextStyles.titleSmallMulishPrimary,
                ),
                SizedBox(height: 54.v),
                _buildLoginInput(context),
                SizedBox(height: 15.v),
                _buildPasswordInput(context),
                SizedBox(height: 32.v),
                Text(
                  "lbl_forgot_passwod".tr,
                  style: CustomTextStyles.labelLargeYellow700,
                ),
                SizedBox(height: 23.v),
                CustomElevatedButton(
                  text: "lbl_enter".tr,
                ),
                SizedBox(height: 24.v),
                Text(
                  "msg_don_t_have_an_account".tr,
                  style: CustomTextStyles.labelLargePrimary_1,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 7.v),
          Selector<LoginProvider, TextEditingController?>(
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
  Widget _buildPasswordInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_password".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 7.v),
          Selector<LoginProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.passwordController,
            builder: (context, passwordController, child) {
              return CustomTextFormField(
                controller: passwordController,
                hintText: "lbl".tr,
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
}

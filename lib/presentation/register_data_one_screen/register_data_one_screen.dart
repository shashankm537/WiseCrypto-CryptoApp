import 'models/register_data_one_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/core/utils/validation_functions.dart';
import 'package:wise_crypto/widgets/custom_checkbox_button.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';
import 'package:wise_crypto/widgets/custom_text_form_field.dart';
import 'provider/register_data_one_provider.dart';

class RegisterDataOneScreen extends StatefulWidget {
  const RegisterDataOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegisterDataOneScreenState createState() => RegisterDataOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterDataOneProvider(),
      child: RegisterDataOneScreen(),
    );
  }
}

class RegisterDataOneScreenState extends State<RegisterDataOneScreen> {
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
              horizontal: 15.h,
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
                SizedBox(height: 80.v),
                Text(
                  "lbl_sign_up".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_trusted_by_millions".tr,
                  style: CustomTextStyles.titleSmallMulishPrimary,
                ),
                SizedBox(height: 54.v),
                _buildEmailInput(context),
                SizedBox(height: 15.v),
                _buildPasswordInput(context),
                SizedBox(height: 15.v),
                _buildConfirmPasswordInput(context),
                SizedBox(height: 33.v),
                _buildTermsAndConditionsCheckbox(context),
                SizedBox(height: 22.v),
                CustomElevatedButton(
                  text: "lbl_confirm".tr,
                ),
                SizedBox(height: 23.v),
                SizedBox(
                  width: 150.h,
                  child: Text(
                    "msg_already_have_an".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargePrimary_1.copyWith(
                      height: 1.30,
                    ),
                  ),
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
  Widget _buildEmailInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        Selector<RegisterDataOneProvider, TextEditingController?>(
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
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_password".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        Consumer<RegisterDataOneProvider>(
          builder: (context, provider, child) {
            return CustomTextFormField(
              controller: provider.passwordController,
              hintText: "lbl".tr,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                onTap: () {
                  provider.changePasswordVisibility();
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 42.v,
              ),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: provider.isShowPassword,
              contentPadding: EdgeInsets.only(
                left: 16.h,
                top: 12.v,
                bottom: 12.v,
              ),
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_confirm_password".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        Consumer<RegisterDataOneProvider>(
          builder: (context, provider, child) {
            return CustomTextFormField(
              controller: provider.confirmpasswordController,
              hintText: "lbl".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                onTap: () {
                  provider.changePasswordVisibility1();
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 42.v,
              ),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: provider.isShowPassword1,
              contentPadding: EdgeInsets.only(
                left: 16.h,
                top: 12.v,
                bottom: 12.v,
              ),
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTermsAndConditionsCheckbox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 29.h),
        child: Selector<RegisterDataOneProvider, bool?>(
          selector: (
            context,
            provider,
          ) =>
              provider.termsAndConditionsCheckbox,
          builder: (context, termsAndConditionsCheckbox, child) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_i_agree_to_the_terms".tr,
              isExpandedText: true,
              value: termsAndConditionsCheckbox,
              onChange: (value) {
                context.read<RegisterDataOneProvider>().changeCheckBox1(value);
              },
            );
          },
        ),
      ),
    );
  }
}

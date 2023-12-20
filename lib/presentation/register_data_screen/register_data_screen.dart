import 'models/register_data_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'package:wise_crypto/widgets/custom_elevated_button.dart';
import 'package:wise_crypto/widgets/custom_text_form_field.dart';
import 'provider/register_data_provider.dart';

class RegisterDataScreen extends StatefulWidget {
  const RegisterDataScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegisterDataScreenState createState() => RegisterDataScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterDataProvider(),
      child: RegisterDataScreen(),
    );
  }
}

class RegisterDataScreenState extends State<RegisterDataScreen> {
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
        body: Container(
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
              _buildFullNameInput(context),
              SizedBox(height: 15.v),
              _buildPhoneNumberInput(context),
              SizedBox(height: 16.v),
              _buildUsernameInput(context),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "lbl_next".tr,
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
              SizedBox(height: 54.v),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRightOnerror,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 8.h),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_full_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        Selector<RegisterDataProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.fullNameController,
          builder: (context, fullNameController, child) {
            return CustomTextFormField(
              controller: fullNameController,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone_number".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        Selector<RegisterDataProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.phoneNumberController,
          builder: (context, phoneNumberController, child) {
            return CustomTextFormField(
              controller: phoneNumberController,
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUsernameInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_username".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 6.v),
        Container(
          width: 345.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineGreen.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray700,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
      ],
    );
  }
}

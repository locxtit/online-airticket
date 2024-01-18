import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_checkbox_button.dart';
import 'package:loc_s_application_booking/widgets/custom_floating_text_field.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  bool luuMatKhau = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplashScreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 27.h,
                  top: 132.v,
                  right: 27.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLayer1,
                      height: 111.v,
                      width: 130.h,
                    ),
                    SizedBox(height: 40.v),
                    _buildLoginScreen(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginScreen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        children: [
          Container(
            decoration: AppDecoration.border.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 52.v,
                  width: 42.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.secondary,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUserCircleSin,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tài khoản",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "KH0000305",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          CustomFloatingTextField(
            controller: passwordController,
            labelText: "Mật khẩu",
            labelStyle: CustomTextStyles.bodyMediumGray600_1,
            hintText: "Mật khẩu",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            prefix: Container(
              margin: EdgeInsets.only(
                left: 10.h,
                right: 24.h,
              ),
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgPadlocksquare1combinationcombolocklockedpadlocksecuresecurityshieldkeyhole,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
            suffix: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              child: CustomImageView(
                imagePath:
                    ImageConstant.imgInvisible1disableeyeeyeballhideoffview,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
            contentPadding: EdgeInsets.fromLTRB(30.h, 23.v, 30.h, 11.v),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCheckboxButton(
                  text: "Lưu mật khẩu",
                  value: luuMatKhau,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    luuMatKhau = value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Text(
                    "Quên mật khẩu?",
                    style: CustomTextStyles.titleSmallOnPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "Đăng nhập",
                  buttonStyle: CustomButtonStyles.outlineOnPrimary,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFingerprintOnprimary,
                height: 40.v,
                width: 30.h,
                margin: EdgeInsets.only(left: 20.h),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

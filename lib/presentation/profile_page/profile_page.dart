import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_floating_text_field.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.light,
                child: Container(
                  height: 686.05.v,
                  width: double.maxFinite,
                  decoration: AppDecoration.fillBlue,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 78.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30.h),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(1.01, 0.04),
                              end: Alignment(0.03, 0.92),
                              colors: [
                                appTheme.lightBlue500,
                                theme.colorScheme.primary,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 13.v,
                            right: 12.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildSearch(context),
                              SizedBox(height: 15.v),
                              _buildPanel(
                                context,
                                userImage: ImageConstant.imgPadlockSquare,
                                titleText: "Đổi mật khẩu",
                              ),
                              SizedBox(height: 15.v),
                              _buildPanel(
                                context,
                                userImage: ImageConstant
                                    .imgUsermultiplegroupclosegeometrichumanmultiplepersonupuser,
                                titleText: "Quản lý khách hàng thân thiết",
                              ),
                              SizedBox(height: 15.v),
                              _buildPanel(
                                context,
                                userImage: ImageConstant.imgBugCodeBugS,
                                titleText: "Ghi nhận lỗi và góp ý",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "Thông tin cá nhân",
            style: CustomTextStyles.titleSmallBlack900,
          ),
          SizedBox(height: 15.v),
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
          SizedBox(height: 15.v),
          CustomFloatingTextField(
            controller: emailController,
            labelText: "Email",
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "Email",
            textInputType: TextInputType.emailAddress,
            prefix: Container(
              margin: EdgeInsets.only(
                left: 10.h,
                right: 24.h,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 16.v,
                width: 20.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
          ),
          SizedBox(height: 15.v),
          CustomFloatingTextField(
            controller: phoneNumberController,
            labelText: "Số điện thoại",
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "Số điện thoại",
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.only(
                left: 10.h,
                right: 24.h,
              ),
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgPhoneandroidphonemobiledevicesmartphoneiphone,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
          ),
          SizedBox(height: 15.v),
          CustomOutlinedButton(
            text: "Cập nhật",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPanel(
    BuildContext context, {
    required String userImage,
    required String titleText,
  }) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              titleText,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 1.h,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }
}

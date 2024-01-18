import '../login_two_screen/widgets/columnlistsection_item_widget.dart';
import '../login_two_screen/widgets/itemlistsection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_elevated_button.dart';
import 'package:loc_s_application_booking/widgets/custom_floating_text_field.dart';

class LoginTwoScreen extends StatelessWidget {
  LoginTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mTKhUController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
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
                padding: EdgeInsets.symmetric(vertical: 51.v),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLayer1,
                      height: 111.v,
                      width: 130.h,
                    ),
                    SizedBox(height: 30.v),
                    _buildLoginSection(context),
                    SizedBox(height: 51.v),
                    _buildColumnListSection(context),
                    SizedBox(height: 20.v),
                    _buildItemListSection(context),
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
  Widget _buildLoginSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
            controller: mTKhUController,
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
          SizedBox(height: 21.v),
          Text(
            "Quên mật khẩu?",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 21.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  height: 40.v,
                  text: "Đăng nhập",
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFingerprint,
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

  /// Section Widget
  Widget _buildColumnListSection(BuildContext context) {
    return SizedBox(
      height: 69.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 15.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ColumnlistsectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildItemListSection(BuildContext context) {
    return SizedBox(
      height: 95.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 15.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 10.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ItemlistsectionItemWidget();
        },
      ),
    );
  }
}

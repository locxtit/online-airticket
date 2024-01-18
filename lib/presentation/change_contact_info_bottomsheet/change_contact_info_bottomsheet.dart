import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_floating_text_field.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ChangeContactInfoBottomsheet extends StatelessWidget {
  ChangeContactInfoBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 28.v,
            width: 320.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    decoration: AppDecoration.light,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUTimes,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "Đổi thông tin liên hệ",
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Column(
            children: [
              Container(
                width: 320.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.border.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "Họ và Tên",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "*",
                            style: CustomTextStyles.bodySmallYellow900,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "Vũ Nguyên Hồ",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 2.v),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              _buildPhoneNumber(context),
              SizedBox(height: 15.v),
              _buildEmail(context),
            ],
          ),
          SizedBox(height: 25.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCancelButton(context),
              _buildSaveButton(context),
            ],
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomFloatingTextField(
      controller: phoneNumberController,
      labelText: "Số điện thoại",
      labelStyle: theme.textTheme.bodyMedium!,
      hintText: "Số điện thoại",
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomFloatingTextField(
      controller: emailController,
      labelText: "Email",
      labelStyle: theme.textTheme.bodyMedium!,
      hintText: "Email",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildCancelButton(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Hủy",
        margin: EdgeInsets.only(right: 7.h),
        buttonStyle: CustomButtonStyles.outlineBlueTL6,
        buttonTextStyle: theme.textTheme.titleSmall!,
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Lưu",
        margin: EdgeInsets.only(left: 7.h),
      ),
    );
  }
}

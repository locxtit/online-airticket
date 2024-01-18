import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';
import 'package:loc_s_application_booking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReportBottomsheet extends StatelessWidget {
  ReportBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeaderPopup(context),
          SizedBox(height: 10.v),
          _buildInput(context),
          SizedBox(height: 15.v),
          _buildContent(context),
          SizedBox(height: 15.v),
          _buildUploadHinhAnh(context),
          SizedBox(height: 20.v),
          _buildBtn(context),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderPopup(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.v),
      decoration: AppDecoration.light,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "Ghi nhận lỗi và góp ý",
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUTimes,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return Container(
      width: 320.h,
      padding: EdgeInsets.only(
        top: 8.v,
        bottom: 7.v,
      ),
      decoration: AppDecoration.bg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mã đại lý",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 4.v),
          Text(
            "KH0000305",
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContent(BuildContext context) {
    return CustomTextFormField(
      controller: contentController,
      hintText: "Nội dung",
      textInputAction: TextInputAction.done,
      maxLines: 13,
    );
  }

  /// Section Widget
  Widget _buildUploadHinhAnh(BuildContext context) {
    return CustomOutlinedButton(
      text: "Upload hình ảnh",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant
              .imgOrientationlandscapephotosphotoorientationlandscapepicturephotographycamerapicturesimage,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineBlueTL6,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildHuy(BuildContext context) {
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
  Widget _buildGui(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Gửi",
        margin: EdgeInsets.only(left: 7.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildHuy(context),
        _buildGui(context),
      ],
    );
  }
}

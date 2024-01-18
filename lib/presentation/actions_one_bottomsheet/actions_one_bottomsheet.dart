import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ActionsOneBottomsheet extends StatelessWidget {
  const ActionsOneBottomsheet({Key? key})
      : super(
          key: key,
        );

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
          SizedBox(height: 18.v),
          _buildXemMatVe(context),
          SizedBox(height: 15.v),
          _buildSmsMatVe(context),
          SizedBox(height: 15.v),
          _buildThemHanhLyDichVu(context),
          SizedBox(height: 15.v),
          _buildDoiThongTinLienHe(context),
          SizedBox(height: 15.v),
          _buildDoiThongTinHanhKhach(context),
          SizedBox(height: 15.v),
          _buildTheKhachHangThuongXuyen(context),
          SizedBox(height: 15.v),
          _buildDoiVe(context),
          SizedBox(height: 15.v),
          _buildNhapOSI(context),
          SizedBox(height: 15.v),
          _buildHuyVoidVe(context),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderPopup(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.light,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Thao tác vé",
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
  Widget _buildXemMatVe(BuildContext context) {
    return CustomOutlinedButton(
      text: "Xem mặt vé",
      buttonStyle: CustomButtonStyles.outlineBlueTL6,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildSmsMatVe(BuildContext context) {
    return CustomOutlinedButton(
      text: "SMS mặt vé",
      buttonStyle: CustomButtonStyles.outlineBlueTL6,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildThemHanhLyDichVu(BuildContext context) {
    return CustomOutlinedButton(
      text: "Thêm hành lý - dich vụ",
      buttonStyle: CustomButtonStyles.outlineBlueTL6,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildDoiThongTinLienHe(BuildContext context) {
    return CustomOutlinedButton(
      text: "Đổi thông tin liên hệ",
      buttonStyle: CustomButtonStyles.outlineBlueTL6,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildDoiThongTinHanhKhach(BuildContext context) {
    return CustomOutlinedButton(
      text: "Đổi thông tin hành khách",
      buttonStyle: CustomButtonStyles.outlineBlueTL6,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildTheKhachHangThuongXuyen(BuildContext context) {
    return CustomOutlinedButton(
      text: "Thẻ khách hàng thường xuyên",
      buttonStyle: CustomButtonStyles.outlineBlueTL6,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildDoiVe(BuildContext context) {
    return CustomOutlinedButton(
      text: "Đổi vé",
      buttonStyle: CustomButtonStyles.outlineBlueTL6,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildNhapOSI(BuildContext context) {
    return CustomOutlinedButton(
      text: "Nhập OSI",
      buttonStyle: CustomButtonStyles.outlineBlueTL6,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildHuyVoidVe(BuildContext context) {
    return CustomOutlinedButton(
      text: "Hủy (Void) vé",
      buttonStyle: CustomButtonStyles.outlineRed,
      buttonTextStyle: CustomTextStyles.titleSmallRed400,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';
import 'package:loc_s_application_booking/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class FilterAgainBottomsheet extends StatelessWidget {
  FilterAgainBottomsheet({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

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
          SizedBox(height: 15.v),
          SizedBox(
            height: 414.v,
            width: 320.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: AppDecoration.light.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildInputRow(context),
                        SizedBox(height: 320.v),
                        CustomOutlinedButton(
                          text: "Xem kết quả",
                        ),
                      ],
                    ),
                  ),
                ),
                _buildFrame(context),
              ],
            ),
          ),
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
              "Tìm đặt chỗ",
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
  Widget _buildInputRow(BuildContext context) {
    return Container(
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
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
              imagePath: ImageConstant.imgBlankCalendar,
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
            child: _buildCalendarColumn(
              context,
              bookingDate: "Từ ngày",
              bookingDay: "T5, 18 Tháng 11",
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              right: 18.h,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Đến ngày",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  "T2, 22 Tháng 11",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 54.v,
            width: 320.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(39.h, 15.v, 39.h, 14.v),
                    decoration: AppDecoration.bg,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.v),
                          child: Text(
                            "Giữ đặt chỗ",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        CustomSwitch(
                          margin: EdgeInsets.only(left: 8.h),
                          value: isSelectedSwitch,
                          onChange: (value) {
                            isSelectedSwitch = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "Đã xuất vé",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      CustomSwitch(
                        margin: EdgeInsets.only(left: 8.h),
                        value: isSelectedSwitch1,
                        onChange: (value) {
                          isSelectedSwitch1 = value;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 14.v,
            ),
            decoration: AppDecoration.bg,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "Ẩn PNR hết hạn giữ chỗ",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                CustomSwitch(
                  margin: EdgeInsets.only(left: 8.h),
                  value: isSelectedSwitch2,
                  onChange: (value) {
                    isSelectedSwitch2 = value;
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 16.v,
            ),
            decoration: AppDecoration.bg,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "Hãng hàng không",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: _buildPlaneCodeRow(
                    context,
                    text: "VN",
                  ),
                ),
                Container(
                  width: 40.h,
                  margin: EdgeInsets.only(left: 8.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "VJ",
                        style: theme.textTheme.labelLarge,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgDelete1Remov,
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 3.v,
                          bottom: 3.v,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 45.h,
                  margin: EdgeInsets.only(left: 8.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "QH",
                        style: theme.textTheme.labelLarge,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgDelete1Remov,
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 3.v,
                          bottom: 3.v,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: _buildPlaneCodeRow(
                    context,
                    text: "VU",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            decoration: AppDecoration.border.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Row(
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
                    imagePath: ImageConstant.imgBlankCalendar,
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
                  child: _buildCalendarColumn(
                    context,
                    bookingDate: "Ngày đặt chỗ",
                    bookingDay: "T5, 18 Tháng 11",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.border.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWarning,
                  height: 24.v,
                  width: 34.h,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    bottom: 1.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mã đặt chỗ",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "123 456 789",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPlaneCodeRow(
    BuildContext context, {
    required String text,
  }) {
    return Container(
      width: 44.h,
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDelete1Remov,
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 3.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCalendarColumn(
    BuildContext context, {
    required String bookingDate,
    required String bookingDay,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bookingDate,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          bookingDay,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }
}

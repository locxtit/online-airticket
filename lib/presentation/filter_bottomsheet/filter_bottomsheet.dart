import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class FilterBottomsheet extends StatelessWidget {
  const FilterBottomsheet({Key? key})
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
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInputCodeRow1(
            context,
            text: "Bộ lọc",
            image: ImageConstant.imgUTimes,
          ),
          SizedBox(height: 20.v),
          Text(
            "Điểm dừng",
            style: CustomTextStyles.titleSmallBlack900,
          ),
          _buildInputCodeRow1(
            context,
            text: "Chỉ các chuyến bay thẳng",
            image: ImageConstant.imgCheckSquareC,
          ),
          _buildInputCodeRow1(
            context,
            text: "1 điểm dừng",
            image: ImageConstant.imgCheckSquareC,
          ),
          _buildInputCodeRow1(
            context,
            text: "2 điểm dừng trở lên",
            image: ImageConstant.imgCheckSquareC,
          ),
          SizedBox(height: 13.v),
          _buildFrameStack(context),
          SizedBox(height: 20.v),
          Text(
            "Hãng hàng không",
            style: CustomTextStyles.titleSmallBlack900,
          ),
          _buildInputCodeRow2(
            context,
            vietnamAirlines: "Vietnam Airlines (VN)",
          ),
          _buildInputCodeRow2(
            context,
            vietnamAirlines: "Vietjet Air (VJ)",
          ),
          _buildInputCodeRow2(
            context,
            vietnamAirlines: "Bamboo Airways (QH)",
          ),
          _buildInputCodeRow2(
            context,
            vietnamAirlines: "Vietravel Airlines (VU)",
          ),
          SizedBox(height: 28.v),
          CustomOutlinedButton(
            text: "Xác nhận",
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 15.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chiều về (mọi lúc)",
              style: CustomTextStyles.bodyMedium13,
            ),
            SizedBox(height: 6.v),
            SizedBox(
              height: 20.v,
              width: 320.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 7.h),
                      decoration: AppDecoration.fillBlue.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrame4006,
                        height: 8.v,
                        width: 305.h,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.blue700,
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          width: 1.h,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.black900.withOpacity(0.1),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.blue700,
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          width: 1.h,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.black900.withOpacity(0.1),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                right: 2.h,
              ),
              child: _buildFrame(
                context,
                time1: "00:00",
                time2: "06:00",
                time3: "12:00",
                time4: "18:00",
                time5: "24:00",
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameStack(BuildContext context) {
    return SizedBox(
      height: 193.v,
      width: 320.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(
                top: 7.v,
                bottom: 6.v,
              ),
              decoration: AppDecoration.outlineBlue,
              child: Text(
                "Giờ bay",
                style: CustomTextStyles.titleSmallBlack900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 39.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chiều đi (mọi lúc)",
                    style: CustomTextStyles.bodyMedium13,
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    height: 20.v,
                    width: 320.h,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.h),
                            decoration: AppDecoration.fillBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrame4006,
                              height: 8.v,
                              width: 305.h,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.blue700,
                              borderRadius: BorderRadius.circular(
                                10.h,
                              ),
                              border: Border.all(
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                                width: 1.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withOpacity(0.1),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.blue700,
                              borderRadius: BorderRadius.circular(
                                10.h,
                              ),
                              border: Border.all(
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                                width: 1.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withOpacity(0.1),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      right: 2.h,
                    ),
                    child: _buildFrame(
                      context,
                      time1: "00:00",
                      time2: "06:00",
                      time3: "12:00",
                      time4: "18:00",
                      time5: "24:00",
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildSliderColumn(context),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildInputCodeRow1(
    BuildContext context, {
    required String text,
    required String image,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: 13.v,
        bottom: 12.v,
      ),
      decoration: AppDecoration.bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              text,
              style: CustomTextStyles.bodyMedium13.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: image,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(right: 1.h),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String time1,
    required String time2,
    required String time3,
    required String time4,
    required String time5,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          time1,
          style: CustomTextStyles.bodySmall11.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Text(
          time2,
          style: CustomTextStyles.bodySmall11.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Text(
          time3,
          style: CustomTextStyles.bodySmall11.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Text(
          time4,
          style: CustomTextStyles.bodySmall11.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Text(
          time5,
          style: CustomTextStyles.bodySmall11.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildInputCodeRow2(
    BuildContext context, {
    required String vietnamAirlines,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: 13.v,
        bottom: 12.v,
      ),
      decoration: AppDecoration.bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWarning,
            height: 24.v,
            width: 34.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              vietnamAirlines,
              style: CustomTextStyles.bodyMedium13.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCheckSquareC,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(right: 1.h),
          ),
        ],
      ),
    );
  }
}

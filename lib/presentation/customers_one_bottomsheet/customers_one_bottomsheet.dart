import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_icon_button.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class CustomersOneBottomsheet extends StatelessWidget {
  const CustomersOneBottomsheet({Key? key})
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
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            decoration: AppDecoration.light,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "Hành khách",
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
          ),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 7.v,
            ),
            decoration: AppDecoration.bg,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Người lớn",
                        style: CustomTextStyles.bodyMedium13,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Từ 12 tuổi trở lên",
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 9.v,
                  ),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSubtractCircle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 8.v,
                    bottom: 12.v,
                  ),
                  child: Text(
                    "1",
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15.h, 4.v, 6.h, 9.v),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAddCircleBut,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 5.v,
            ),
            decoration: AppDecoration.bg,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trẻ em",
                        style: CustomTextStyles.bodyMedium13,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "Từ 2 - 11 tuổi ",
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 10.v,
                  ),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSubtractCircleBlue700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 9.v,
                    bottom: 14.v,
                  ),
                  child: Text(
                    "2",
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(14.h, 5.v, 6.h, 10.v),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAddCircleBut,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 7.v,
            ),
            decoration: AppDecoration.bg,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trẻ sơ sinh (ngồi trên đùi)",
                        style: CustomTextStyles.bodyMedium13,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Dưới 2 tuổi ",
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 9.v,
                  ),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSubtractCircle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 8.v,
                    bottom: 13.v,
                  ),
                  child: Text(
                    "0",
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(13.h, 4.v, 6.h, 9.v),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAddCircleBut,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          CustomOutlinedButton(
            text: "Xác nhận",
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}

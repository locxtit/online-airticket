import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class TicketcomponentItemWidget extends StatelessWidget {
  const TicketcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(11.h, 10.v, 11.h, 9.v),
      decoration: AppDecoration.bgBg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "20:15",
                      style:
                          CustomTextStyles.labelLargeOnPrimaryContainerSemiBold,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "VJ204",
                      style: CustomTextStyles.labelMediumMedium10,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 3.v,
                    bottom: 4.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowTransfer,
                        height: 10.v,
                        width: 24.h,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "1g 20p",
                        style: CustomTextStyles.bodySmall9,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "06:50",
                          style: CustomTextStyles
                              .labelLargeOnPrimaryContainerSemiBold,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "B1, ECO8",
                        style: CustomTextStyles.labelMediumMedium10,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 17.v),
                  child: Text(
                    "0 đ",
                    style: CustomTextStyles.labelLargeYellow900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWarning,
                  height: 16.v,
                  width: 23.h,
                ),
                Text(
                  "Vietnam Airlines",
                  style: CustomTextStyles.bodySmall10,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "Hạng ghế khác",
                    style: CustomTextStyles.labelMediumBlue700,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 2.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

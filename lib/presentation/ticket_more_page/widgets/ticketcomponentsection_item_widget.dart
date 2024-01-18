import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class TicketcomponentsectionItemWidget extends StatelessWidget {
  const TicketcomponentsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(13.h, 9.v, 13.h, 8.v),
      decoration: AppDecoration.bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "20:15",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "VJ204",
                            style:
                                CustomTextStyles.labelLargeOnPrimaryContainer_1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        top: 6.v,
                        bottom: 4.v,
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowTransfer,
                            height: 10.v,
                            width: 24.h,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "1g 20p",
                            style: CustomTextStyles.bodySmall10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27.h),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "06:50",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "B1, ECO8",
                            style:
                                CustomTextStyles.labelLargeOnPrimaryContainer_1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgWarning,
                      height: 16.v,
                      width: 23.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "Vietjet Air",
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "1.940.250 đ",
                    style: CustomTextStyles.titleMediumYellow900Medium,
                  ),
                ),
                SizedBox(height: 19.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "Hạng ghế khác",
                        style: CustomTextStyles.labelMediumBlue700Medium,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

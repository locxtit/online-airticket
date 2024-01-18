import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class TicketOverviewBottomsheet extends StatelessWidget {
  const TicketOverviewBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeaderPopup(context),
          _buildTicketOverview(context),
          CustomOutlinedButton(
            height: 36.v,
            text: "Quá cảnh tại Bangkok, Thailand, 1g 30p",
            buttonStyle: CustomButtonStyles.outlineBlue,
            buttonTextStyle: CustomTextStyles.bodySmallErrorContainer,
          ),
          SizedBox(height: 65.v),
          _buildTicketOverview1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderPopup(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(vertical: 1.v),
      decoration: AppDecoration.light,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Thông tin chuyến bay",
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
  Widget _buildTicketOverview(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(15.h, 15.v, 15.h, 14.v),
      decoration: AppDecoration.bg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 58.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.secondary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Text(
                  "Chiều đi",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 3.v,
                ),
                child: Text(
                  "T5, 18 Thg11 ",
                  style: CustomTextStyles.bodySmallErrorContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 22.h),
            child: Row(
              children: [
                _buildFrame(
                  context,
                  time: "20:15",
                  weight: "1g 20p",
                  time1: "06:50",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: SizedBox(
                    height: 132.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 11.h,
                      endIndent: 11.h,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 256.h,
                          child: Text(
                            "HAN - Cảng hàng không quốc tế Tân Sơn\nNhất - Tp. Hồ Chí Minh",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .labelLargeOnPrimaryContainerSemiBold
                                .copyWith(
                              height: 1.54,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(right: 15.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 38.v,
                                width: 95.h,
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        "Vietjet Air",
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgWarning,
                                            height: 24.v,
                                            width: 34.h,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 5.h,
                                              top: 4.v,
                                              bottom: 4.v,
                                            ),
                                            child: Text(
                                              "VJ148",
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSettings,
                                height: 14.v,
                                width: 96.h,
                                margin: EdgeInsets.only(
                                  top: 19.v,
                                  bottom: 5.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 39.h),
                          child: Text(
                            "Airbus A330-300",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Text(
                          "DAD - Sân bay quốc tế Đàng Nẵng",
                          style: CustomTextStyles
                              .labelLargeOnPrimaryContainerSemiBold,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTicketOverview1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.light,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 61.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.secondary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Text(
                  "Chiều về",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 3.v,
                ),
                child: Text(
                  "T2, 22 Thg11 ",
                  style: CustomTextStyles.bodySmallErrorContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 22.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: _buildFrame(
                    context,
                    time: "20:15",
                    weight: "1g 20p",
                    time1: "06:50",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: SizedBox(
                    height: 133.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 10.h,
                      endIndent: 13.h,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DAD - Sân bay quốc tế Đàng Nẵng",
                          style: CustomTextStyles
                              .labelLargeOnPrimaryContainerSemiBold,
                        ),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(right: 15.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgWarning,
                                height: 24.v,
                                width: 34.h,
                                margin: EdgeInsets.symmetric(vertical: 15.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Vietnam Airlines",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 5.v),
                                    Text(
                                      "VN214",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 5.v),
                                    Text(
                                      "Airbus A330-300",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSettings,
                                height: 14.v,
                                width: 96.h,
                                margin: EdgeInsets.only(
                                  left: 5.h,
                                  top: 20.v,
                                  bottom: 20.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 11.v),
                        SizedBox(
                          width: 256.h,
                          child: Text(
                            "HAN - Cảng hàng không quốc tế Tân Sơn\nNhất - Tp. Hồ Chí Minh",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .labelLargeOnPrimaryContainerSemiBold
                                .copyWith(
                              height: 1.54,
                            ),
                          ),
                        ),
                      ],
                    ),
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
  Widget _buildFrame(
    BuildContext context, {
    required String time,
    required String weight,
    required String time1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          time,
          style: CustomTextStyles.titleSmallOnPrimaryContainer.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        SizedBox(height: 43.v),
        Text(
          weight,
          style: CustomTextStyles.bodySmall10.copyWith(
            color: appTheme.gray600,
          ),
        ),
        SizedBox(height: 40.v),
        Text(
          time1,
          style: CustomTextStyles.titleSmallOnPrimaryContainer.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
  }
}

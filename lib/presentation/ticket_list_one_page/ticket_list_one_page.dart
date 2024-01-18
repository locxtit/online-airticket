import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TicketListOnePage extends StatefulWidget {
  const TicketListOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  TicketListOnePageState createState() => TicketListOnePageState();
}

class TicketListOnePageState extends State<TicketListOnePage>
    with AutomaticKeepAliveClientMixin<TicketListOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    _buildFilterSection(context),
                    _buildInfoSection(context),
                    _buildTicketSection(context),
                    _buildTicketSection6(
                      context,
                      time: "20:15",
                      vJ: "VJ204",
                      weight: "1g 20p",
                      time1: "06:50",
                      bECOEight: "B1, ECO8",
                      vietjetAir: "Vietnam Airlines",
                      widget: "1.880.250 đ",
                      hNgGhKhC: "Hạng ghế khác",
                    ),
                    _buildTicketSection2(context),
                    _buildTicketSection3(context),
                    _buildTicketSection4(context),
                    _buildTicketSection5(context),
                    _buildTicketSection6(
                      context,
                      time: "20:15",
                      vJ: "VJ204",
                      weight: "1g 20p",
                      time1: "06:50",
                      bECOEight: "B1, ECO8",
                      vietjetAir: "Vietnam Airlines",
                      widget: "1.980.250 đ",
                      hNgGhKhC: "Hạng ghế khác",
                    ),
                    _buildInfo(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilterSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.bgLight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowUpBlack900,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Ưu tiên bay thẳng",
              style: CustomTextStyles.labelLargeBlack900_1,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgVerticalSlider,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Bộ lọc",
              style: CustomTextStyles.labelLargeBlack900_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInfoSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(15.h, 6.v, 15.h, 5.v),
      decoration: AppDecoration.bg,
      child: Text(
        "Giá vé khứ hồi cho mỗi hành khách, đã bao gồm thuế và phí",
        style: theme.textTheme.bodySmall,
      ),
    );
  }

  /// Section Widget
  Widget _buildTicketSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(13.h, 9.v, 13.h, 8.v),
      decoration: AppDecoration.bg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildFrame(
                  context,
                  time: "20:15",
                  vJ: "VJ204",
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: _buildFrame1(
                    context,
                    weight: "1g 20p",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: _buildFrame2(
                    context,
                    time: "06:50",
                    bECOEight: "B1, ECO8",
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 18.v),
                  child: Text(
                    "1.850.250 đ",
                    style: CustomTextStyles.titleMediumYellow900Medium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: _buildFrame5(
                    context,
                    airlineName: "Vietjet Air",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: _buildFrame3(
                    context,
                    hNgGhKhC: "Hạng ghế khác",
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
  Widget _buildTicketSection2(BuildContext context) {
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
                _buildFrame4(
                  context,
                  time: "20:15",
                  vJ: "VJ204",
                  weight: "1g 20p",
                  time1: "06:50",
                  bECOEight: "B1, ECO8",
                ),
                SizedBox(height: 4.v),
                _buildFrame5(
                  context,
                  airlineName: "Vietjet Air",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: _buildFrame6(
              context,
              dynamicText: "1.920.250 đ",
              dynamicText1: "Hạng ghế khác",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTicketSection3(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(13.h, 9.v, 13.h, 8.v),
      decoration: AppDecoration.bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              children: [
                _buildTime(
                  context,
                  time: "20:15",
                  vJ: "VJ204",
                  weight: "1g 20p",
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgWarning,
                      height: 16.v,
                      width: 23.h,
                    ),
                    Text(
                      "Vietravel Airlines",
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              bottom: 21.v,
            ),
            child: _buildFrame2(
              context,
              time: "06:50",
              bECOEight: "B1, ECO8",
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: _buildFrame6(
              context,
              dynamicText: "1.930.250 đ",
              dynamicText1: "Hạng ghế khác",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTicketSection4(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(13.h, 9.v, 13.h, 8.v),
      decoration: AppDecoration.bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTime(
                  context,
                  time: "20:15",
                  vJ: "VJ204",
                  weight: "1g 20p",
                ),
                SizedBox(height: 5.v),
                _buildFrame5(
                  context,
                  airlineName: "Vietjet Air",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              bottom: 21.v,
            ),
            child: _buildFrame2(
              context,
              time: "06:50",
              bECOEight: "B1, ECO8",
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: _buildFrame6(
              context,
              dynamicText: "1.940.250 đ",
              dynamicText1: "Hạng ghế khác",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTicketSection5(BuildContext context) {
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
                _buildFrame4(
                  context,
                  time: "20:15",
                  vJ: "VJ204",
                  weight: "1g 20p",
                  time1: "06:50",
                  bECOEight: "B1, ECO8",
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
                        "Bamboo Airways",
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
            child: _buildFrame6(
              context,
              dynamicText: "1.960.250 đ",
              dynamicText1: "Hạng ghế khác",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInfo(BuildContext context) {
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
                SizedBox(
                  width: 185.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildFrame(
                        context,
                        time: "20:15",
                        vJ: "VJ204",
                      ),
                      Padding(
                        padding: EdgeInsets.only(
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
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "06:50",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "B1, ECO8",
                            textAlign: TextAlign.right,
                            style:
                                CustomTextStyles.labelLargeOnPrimaryContainer_1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                _buildFrame7(
                  context,
                  airlineText: "Vietnam Airlines",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: _buildFrame6(
              context,
              dynamicText: "1.990.250 đ",
              dynamicText1: "Hạng ghế khác",
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
    required String vJ,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          time,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          vJ,
          style: CustomTextStyles.labelLargeOnPrimaryContainer_1.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String weight,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowTransfer,
          height: 10.v,
          width: 24.h,
        ),
        SizedBox(height: 4.v),
        Text(
          weight,
          style: CustomTextStyles.bodySmall10.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame2(
    BuildContext context, {
    required String time,
    required String bECOEight,
  }) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            time,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          bECOEight,
          style: CustomTextStyles.labelLargeOnPrimaryContainer_1.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame3(
    BuildContext context, {
    required String hNgGhKhC,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            hNgGhKhC,
            style: CustomTextStyles.labelMediumBlue700Medium.copyWith(
              color: appTheme.blue700,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 2.h),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame4(
    BuildContext context, {
    required String time,
    required String vJ,
    required String weight,
    required String time1,
    required String bECOEight,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                vJ,
                style: CustomTextStyles.labelLargeOnPrimaryContainer_1.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
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
                weight,
                style: CustomTextStyles.bodySmall10.copyWith(
                  color: appTheme.gray600,
                ),
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
                  time1,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                bECOEight,
                style: CustomTextStyles.labelLargeOnPrimaryContainer_1.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame5(
    BuildContext context, {
    required String airlineName,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgWarning,
          height: 16.v,
          width: 23.h,
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            airlineName,
            style: CustomTextStyles.bodySmall10.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame6(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            dynamicText,
            style: CustomTextStyles.titleMediumYellow900Medium.copyWith(
              color: appTheme.yellow900,
            ),
          ),
        ),
        SizedBox(height: 19.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                dynamicText1,
                style: CustomTextStyles.labelMediumBlue700Medium.copyWith(
                  color: appTheme.blue700,
                ),
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
    );
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String time,
    required String vJ,
    required String weight,
  }) {
    return SizedBox(
      width: 103.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                vJ,
                style: CustomTextStyles.labelLargeOnPrimaryContainer_1.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 3.v,
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
                  weight,
                  style: CustomTextStyles.bodySmall10.copyWith(
                    color: appTheme.gray600,
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
  Widget _buildTicketSection6(
    BuildContext context, {
    required String time,
    required String vJ,
    required String weight,
    required String time1,
    required String bECOEight,
    required String vietjetAir,
    required String widget,
    required String hNgGhKhC,
  }) {
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
                            time,
                            style: theme.textTheme.titleMedium!.copyWith(
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            vJ,
                            style: CustomTextStyles
                                .labelLargeOnPrimaryContainer_1
                                .copyWith(
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
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
                            weight,
                            style: CustomTextStyles.bodySmall10.copyWith(
                              color: appTheme.gray600,
                            ),
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
                              time1,
                              style: theme.textTheme.titleMedium!.copyWith(
                                color: theme.colorScheme.onPrimaryContainer,
                              ),
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            bECOEight,
                            style: CustomTextStyles
                                .labelLargeOnPrimaryContainer_1
                                .copyWith(
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
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
                    Text(
                      vietjetAir,
                      style: CustomTextStyles.bodySmall10.copyWith(
                        color: appTheme.gray600,
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
                    widget,
                    style: CustomTextStyles.titleMediumYellow900Medium.copyWith(
                      color: appTheme.yellow900,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        hNgGhKhC,
                        style:
                            CustomTextStyles.labelMediumBlue700Medium.copyWith(
                          color: appTheme.blue700,
                        ),
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

  /// Common widget
  Widget _buildFrame7(
    BuildContext context, {
    required String airlineText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgWarning,
          height: 16.v,
          width: 23.h,
        ),
        Text(
          airlineText,
          textAlign: TextAlign.center,
          style: CustomTextStyles.bodySmall10.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }
}

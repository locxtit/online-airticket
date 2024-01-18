import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_icon_button.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';
import 'package:loc_s_application_booking/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SearchTicketTwoPage extends StatefulWidget {
  const SearchTicketTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTicketTwoPageState createState() => SearchTicketTwoPageState();
}

class SearchTicketTwoPageState extends State<SearchTicketTwoPage>
    with AutomaticKeepAliveClientMixin<SearchTicketTwoPage> {
  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.light,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  children: [
                    _buildTakeOffTravelFrame(context),
                    SizedBox(height: 15.v),
                    _buildBlankCalendarFrame(context),
                    SizedBox(height: 15.v),
                    _buildUserMultipleGFrame(context),
                    SizedBox(height: 5.v),
                    _buildBayThNgRow(context),
                    _buildTraCUTheoThNgRow(context),
                    _buildHNgHNgKhNgRow(context),
                    SizedBox(height: 15.v),
                    _buildDiscountPercenFrame(context),
                    SizedBox(height: 15.v),
                    CustomOutlinedButton(
                      text: "Tìm chuyến bay",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTakeOffTravelFrame(BuildContext context) {
    return SizedBox(
      height: 123.v,
      width: 320.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 69.v),
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
                      imagePath: ImageConstant.imgTakeOffTraveOnprimary,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bay từ",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Hà Nội (HAN), Việt Nam",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 69.v),
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
                      imagePath: ImageConstant.imgTakeOffTraveOnprimary22x22,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 7.v,
                      bottom: 7.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bay đến",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Đà Năng (DAD), Việt Nam",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 11.h),
            child: CustomIconButton(
              height: 53.adaptSize,
              width: 53.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.outlineBlack,
              alignment: Alignment.centerRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgAirportPlaneTransit,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBlankCalendarFrame(BuildContext context) {
    return Container(
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        children: [
          Container(
            height: 54.v,
            width: 44.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.secondary,
            child: CustomImageView(
              imagePath: ImageConstant.imgBlankCalendar,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ngày đi",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  "T5, 18 Tháng 11",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              right: 17.h,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ngày về",
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
  Widget _buildUserMultipleGFrame(BuildContext context) {
    return Container(
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        children: [
          Container(
            height: 54.v,
            width: 44.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.secondary,
            child: CustomImageView(
              imagePath: ImageConstant.imgUserMultipleG,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hành khách",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 6.v),
                Text(
                  "2 Người lớn, 1 Trẻ em, 1 Em bé",
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
  Widget _buildBayThNgRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15.v,
        bottom: 14.v,
      ),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          SizedBox(
            width: 110.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  child: Text(
                    "Bay thẳng",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                CustomSwitch(
                  value: isSelectedSwitch,
                  onChange: (value) {
                    isSelectedSwitch = value;
                  },
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 3.v,
            ),
            child: Text(
              "Chuyên dụng",
              style: theme.textTheme.bodySmall,
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(
              left: 8.h,
              right: 32.h,
            ),
            value: isSelectedSwitch1,
            onChange: (value) {
              isSelectedSwitch1 = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTraCUTheoThNgRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15.v,
        bottom: 14.v,
      ),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 3.v,
            ),
            child: Text(
              "Tra cứu theo tháng",
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
    );
  }

  /// Section Widget
  Widget _buildHNgHNgKhNgRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 17.v,
        bottom: 16.v,
      ),
      decoration: AppDecoration.bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Hãng hàng không",
              style: theme.textTheme.bodySmall,
            ),
          ),
          _buildVNRow(
            context,
            vN: "VN",
          ),
          Container(
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
                    left: 7.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: _buildVNRow(
              context,
              vN: "VU",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscountPercenFrame(BuildContext context) {
    return Container(
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 54.v,
            width: 44.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.secondary,
            child: CustomImageView(
              imagePath: ImageConstant.imgDiscountPercen,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 8.v,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mã giảm giá",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 3.v),
                Text(
                  "4 Mã giảm giá",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildVNRow(
    BuildContext context, {
    required String vN,
  }) {
    return Container(
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
            vN,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
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
    );
  }
}

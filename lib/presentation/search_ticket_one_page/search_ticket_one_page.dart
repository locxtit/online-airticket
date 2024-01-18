import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_icon_button.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';
import 'package:loc_s_application_booking/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SearchTicketOnePage extends StatefulWidget {
  const SearchTicketOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTicketOnePageState createState() => SearchTicketOnePageState();
}

class SearchTicketOnePageState extends State<SearchTicketOnePage>
    with AutomaticKeepAliveClientMixin<SearchTicketOnePage> {
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
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  children: [
                    _buildSixteen(context),
                    SizedBox(height: 8.v),
                    _buildInputRow(context),
                    SizedBox(height: 8.v),
                    _buildBayN(
                      context,
                      dynamicText1: "Hành khách",
                      dynamicText2: "2 Người lớn, 1 Trẻ em, 1 Em bé",
                    ),
                    SizedBox(height: 8.v),
                    _buildBayThNg(context),
                    SizedBox(height: 8.v),
                    _buildTraCUTheoThNg(context),
                    SizedBox(height: 8.v),
                    _buildHNgHNgKhNg(context),
                    SizedBox(height: 8.v),
                    _buildBayN(
                      context,
                      dynamicText1: "Mã giảm giá",
                      dynamicText2: "4 Mã giảm giá",
                    ),
                    SizedBox(height: 18.v),
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
  Widget _buildSixteen(BuildContext context) {
    return SizedBox(
      height: 116.v,
      width: 320.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _buildBayN(
            context,
            dynamicText1: "Bay từ",
            dynamicText2: "Hà Nội (HAN), Việt Nam",
          ),
          _buildBayN(
            context,
            dynamicText1: "Bay đến",
            dynamicText2: "Đà Năng (DAD), Việt Nam",
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 25.v,
              right: 1.h,
            ),
            child: CustomIconButton(
              height: 53.adaptSize,
              width: 53.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.outlineBlack,
              alignment: Alignment.topRight,
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
  Widget _buildInputRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(3.h, 3.v, 3.h, 2.v),
      decoration: AppDecoration.outlinePrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 7.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ngày đi",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 8.v),
                Text(
                  "T5, 18 Tháng11",
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 22.v,
              bottom: 8.v,
            ),
            child: Text(
              "3 ngày",
              style: theme.textTheme.bodySmall,
            ),
          ),
          Spacer(
            flex: 47,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 7.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Ngày về",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 8.v),
                Text(
                  "T2, 22 Tháng11",
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBayThNg(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.v,
        bottom: 11.v,
      ),
      decoration: AppDecoration.outlinePrimaryContainer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 9.v,
            ),
            child: Text(
              "Bay thẳng",
              style: theme.textTheme.bodySmall,
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(
              left: 10.h,
              bottom: 5.v,
            ),
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 8.v,
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
              bottom: 5.v,
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
  Widget _buildTraCUTheoThNg(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.v,
        bottom: 11.v,
      ),
      decoration: AppDecoration.outlinePrimaryContainer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 8.v,
            ),
            child: Text(
              "Tra cứu theo tháng",
              style: theme.textTheme.bodySmall,
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(
              left: 8.h,
              bottom: 5.v,
            ),
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
  Widget _buildHNgHNgKhNg(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 14.v,
        bottom: 13.v,
      ),
      decoration: AppDecoration.outlinePrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 5.v,
            ),
            child: Text(
              "Hãng hàng không",
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: _buildPlaneCode(
              context,
              vN: "VN",
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5.v),
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
            margin: EdgeInsets.only(bottom: 5.v),
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
            padding: EdgeInsets.only(
              right: 12.h,
              bottom: 5.v,
            ),
            child: _buildPlaneCode(
              context,
              vN: "VU",
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBayN(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Container(
      padding: EdgeInsets.fromLTRB(2.h, 3.v, 2.h, 2.v),
      decoration: AppDecoration.outlinePrimaryContainer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dynamicText1,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray600,
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            dynamicText2,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPlaneCode(
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

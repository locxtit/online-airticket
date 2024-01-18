import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class BookingPage extends StatefulWidget {
  const BookingPage({Key? key})
      : super(
          key: key,
        );

  @override
  BookingPageState createState() => BookingPageState();
}

class BookingPageState extends State<BookingPage>
    with AutomaticKeepAliveClientMixin<BookingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blue50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlue,
          child: Column(
            children: [
              _buildTicketItem(context),
              _buildTicketItemDetails(context),
              _buildTicketItemBooking(context),
              _buildTicketItemTicket(context),
              _buildTicketItemReservation1(context),
              _buildTicketItemCancellation(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTicketItemReservation(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 90.h,
      text: "Đang giữ chỗ",
      margin: EdgeInsets.only(
        left: 18.h,
        top: 17.v,
        bottom: 17.v,
      ),
      buttonStyle: CustomButtonStyles.fillYellow,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildTicketItem(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(9.h, 11.v, 9.h, 12.v),
      decoration: AppDecoration.outlineBlue501,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildFrame(
            context,
            title: "LQPQWN",
            date: "14 Tháng 11, 2023",
            time: "10:00",
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: _buildFrame1(
              context,
              vietnamAirlines: "Vietnam Airlines",
            ),
          ),
          _buildTicketItemReservation(context),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVerticalAlt,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 17.v,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAngGiCh(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 90.h,
      text: "Đang giữ chỗ",
      margin: EdgeInsets.symmetric(vertical: 17.v),
      buttonStyle: CustomButtonStyles.fillYellow,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildTicketItemDetails(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(9.h, 11.v, 9.h, 12.v),
      decoration: AppDecoration.outlineBlue501,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: _buildFrame(
              context,
              title: "LQPQWN",
              date: "14 Tháng 11, 2023",
              time: "10:00",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWarning,
                  height: 24.v,
                  width: 34.h,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Vietjet Air",
                  style: CustomTextStyles.bodySmall11,
                ),
              ],
            ),
          ),
          Spacer(),
          _buildAngGiCh(context),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVerticalAlt,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 17.v,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAngGiCh1(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 90.h,
      text: "Đang giữ chỗ",
      margin: EdgeInsets.only(
        left: 14.h,
        top: 17.v,
        bottom: 17.v,
      ),
      buttonStyle: CustomButtonStyles.fillYellow,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildTicketItemBooking(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(9.h, 11.v, 9.h, 12.v),
      decoration: AppDecoration.outlineBlue501,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildFrame(
            context,
            title: "LQPQWN",
            date: "14 Tháng 11, 2023",
            time: "10:00",
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWarning,
                  height: 24.v,
                  width: 34.h,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Bamboo Airways",
                  style: CustomTextStyles.bodySmall11,
                ),
              ],
            ),
          ),
          _buildAngGiCh1(context),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVerticalAlt,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 17.v,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildXutV(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 90.h,
      text: "Đã xuất vé",
      margin: EdgeInsets.only(
        left: 18.h,
        top: 17.v,
        bottom: 17.v,
      ),
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildTicketItemTicket(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(9.h, 11.v, 9.h, 12.v),
      decoration: AppDecoration.outlineBlue501,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildFrame(
            context,
            title: "LQPQWN",
            date: "14 Tháng 11, 2023",
            time: "10:00",
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: _buildFrame1(
              context,
              vietnamAirlines: "Vietnam Airlines",
            ),
          ),
          _buildXutV(context),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVerticalAlt,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 17.v,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAngGiCh2(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 90.h,
      text: "Đang giữ chỗ",
      margin: EdgeInsets.only(
        left: 18.h,
        top: 17.v,
        bottom: 17.v,
      ),
      buttonStyle: CustomButtonStyles.fillYellow,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildTicketItemReservation1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(9.h, 11.v, 9.h, 12.v),
      decoration: AppDecoration.outlineBlue501,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildFrame(
            context,
            title: "LQPQWN",
            date: "14 Tháng 11, 2023",
            time: "10:00",
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: _buildFrame1(
              context,
              vietnamAirlines: "Vietnam Airlines",
            ),
          ),
          _buildAngGiCh2(context),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVerticalAlt,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 17.v,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHyV(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 90.h,
      text: "Đã hủy vé",
      margin: EdgeInsets.only(
        left: 15.h,
        top: 17.v,
        bottom: 17.v,
      ),
      buttonStyle: CustomButtonStyles.fillRed,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildTicketItemCancellation(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(9.h, 11.v, 9.h, 12.v),
      decoration: AppDecoration.outlineBlue501,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildFrame(
            context,
            title: "LQPQWN",
            date: "14 Tháng 11, 2023",
            time: "10:00",
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWarning,
                  height: 24.v,
                  width: 34.h,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Vietravel Airlines",
                  style: CustomTextStyles.bodySmall11,
                ),
              ],
            ),
          ),
          _buildHyV(context),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVerticalAlt,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 17.v,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String title,
    required String date,
    required String time,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: CustomTextStyles.labelLargeBlue700SemiBold.copyWith(
            color: appTheme.blue700,
          ),
        ),
        SizedBox(height: 6.v),
        Text(
          date,
          style: CustomTextStyles.bodySmallBlack900_1.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 6.v),
        Text(
          time,
          style: CustomTextStyles.bodySmallBlack900_1.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String vietnamAirlines,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgWarning,
          height: 24.v,
          width: 34.h,
        ),
        SizedBox(height: 2.v),
        Text(
          vietnamAirlines,
          style: CustomTextStyles.bodySmall11.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }
}

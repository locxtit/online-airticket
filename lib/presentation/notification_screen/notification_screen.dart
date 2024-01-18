import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/app_bar/appbar_leading_image.dart';
import 'package:loc_s_application_booking/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:loc_s_application_booking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:loc_s_application_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:loc_s_application_booking/widgets/custom_icon_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1038.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 770.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            theme.colorScheme.onPrimary.withOpacity(1),
                            appTheme.blue50,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildNotifyItemRow1(context),
                        _buildNotifyItemRow2(context),
                        _buildNotifyItemRow3(context),
                        _buildNotifyItemRow4(context),
                        _buildNotifyItemRow5(context),
                        _buildNotifyItemRow6(context),
                        _buildNotifyItemRow7(context),
                        _buildNotifyItemRow8(context),
                        _buildNotifyItemRow9(context),
                        _buildNotifyItemRow10(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 43.v,
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUTimesOnprimary,
        margin: EdgeInsets.only(
          left: 10.h,
          top: 5.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "Thông báo (5)",
        margin: EdgeInsets.only(left: 10.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRecycleBin2,
          margin: EdgeInsets.fromLTRB(15.h, 6.v, 15.h, 14.v),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.yellow900,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTakeOffTrave,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow2(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.yellow900,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgClipboardCheck,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow3(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.yellow900,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCalendarEdit,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow4(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.yellow900,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgAirportPlaneTransitBlue700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow5(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.yellow900,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgAirportPlane,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow6(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.blue50,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgWarningTriangl,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow7(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.blue50,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGift2Reward,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow8(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.blue50,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgReceiptShopS,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow9(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.blue50,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgDiamond2Diam,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifyItemRow10(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(12.h, 11.v, 12.h, 10.v),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 33.v),
            decoration: BoxDecoration(
              color: appTheme.blue50,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgBaggageCheckBlue700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrame(
              context,
              notificationTitle: "Notification title",
              notificationContent:
                  "Lorem ipsum dolor sit amet consectetur. Sit nunc nec lacus commodo faucibus ultrices sed...",
              notificationDate: "T5, 18 Tháng 11 (12:00)",
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String notificationTitle,
    required String notificationContent,
    required String notificationDate,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notificationTitle,
              style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                color: appTheme.black900,
              ),
            ),
            SizedBox(height: 4.v),
            SizedBox(
              width: 275.h,
              child: Text(
                notificationContent,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                  height: 1.33,
                ),
              ),
            ),
            SizedBox(height: 5.v),
            Text(
              notificationDate,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

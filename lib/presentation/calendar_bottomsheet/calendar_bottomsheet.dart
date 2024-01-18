import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class CalendarBottomsheet extends StatelessWidget {
  CalendarBottomsheet({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar1 = [];

  List<DateTime?> selectedDatesFromCalendar2 = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeaderPopup(context),
          SizedBox(height: 10.v),
          _buildWeekday(context),
          SizedBox(height: 10.v),
          _buildCalendar1(context),
          SizedBox(height: 21.v),
          _buildCalendar2(context),
          SizedBox(height: 21.v),
          CustomOutlinedButton(
            text: "Xác nhận",
            margin: EdgeInsets.symmetric(horizontal: 7.h),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderPopup(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.v),
      decoration: AppDecoration.light,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Chọn ngày",
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
  Widget _buildWeekday(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      padding: EdgeInsets.only(
        top: 12.v,
        bottom: 11.v,
      ),
      decoration: AppDecoration.outlineBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "T2",
            style: CustomTextStyles.labelLargePrimary,
          ),
          Text(
            "T3",
            style: CustomTextStyles.labelLargePrimary,
          ),
          Text(
            "T4",
            style: CustomTextStyles.labelLargePrimary,
          ),
          Text(
            "T5",
            style: CustomTextStyles.labelLargePrimary,
          ),
          Text(
            "T6",
            style: CustomTextStyles.labelLargePrimary,
          ),
          Text(
            "T7",
            style: CustomTextStyles.labelLargePrimary,
          ),
          Text(
            "CN",
            style: CustomTextStyles.labelLargePrimary,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar1(BuildContext context) {
    return SizedBox(
      height: 269.v,
      width: 328.h,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.multi,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          selectedDayHighlightColor: Color(0XFF1A75E5),
          firstDayOfWeek: 0,
          selectedDayTextStyle: TextStyle(
            color: Color(0XFFFFFFFF),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
          dayTextStyle: TextStyle(
            color: appTheme.gray600,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          disabledDayTextStyle: TextStyle(
            color: appTheme.gray600,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        value: selectedDatesFromCalendar1,
        onValueChanged: (dates) {},
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar2(BuildContext context) {
    return SizedBox(
      height: 269.v,
      width: 328.h,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.multi,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          selectedDayHighlightColor: Color(0XFFFFFFFF),
          firstDayOfWeek: 0,
          selectedDayTextStyle: TextStyle(
            color: Color(0XFF000000),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          dayTextStyle: TextStyle(
            color: appTheme.gray600,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          disabledDayTextStyle: TextStyle(
            color: appTheme.gray600,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        value: selectedDatesFromCalendar2,
        onValueChanged: (dates) {},
      ),
    );
  }
}

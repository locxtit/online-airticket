import '../setting_fare_page/widgets/flightcardlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';
import 'package:loc_s_application_booking/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SettingFarePage extends StatelessWidget {
  SettingFarePage({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.light,
          child: Container(
            height: 686.05.v,
            width: double.maxFinite,
            decoration: AppDecoration.fillBlue,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 78.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30.h),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(1.01, 0.04),
                        end: Alignment(0.03, 0.92),
                        colors: [
                          appTheme.lightBlue500,
                          theme.colorScheme.primary,
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 13.v,
                      right: 12.h,
                    ),
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.light.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 7.v),
                        Text(
                          "Hiển thị giá",
                          style: CustomTextStyles.titleSmallBlack900,
                        ),
                        _buildFareInput(context),
                        _buildSaleInput(context),
                        SizedBox(height: 17.v),
                        Text(
                          "Cài đặc phí xuất vé",
                          style: CustomTextStyles.titleSmallBlack900_1,
                        ),
                        SizedBox(height: 15.v),
                        _buildFlightCardList(context),
                        SizedBox(height: 15.v),
                        CustomOutlinedButton(
                          text: "Cập nhật",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFareInput(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15.v,
        bottom: 14.v,
      ),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Text(
              "Giá full (fare + thuế)",
              style: theme.textTheme.bodySmall,
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(left: 8.h),
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              top: 3.v,
              bottom: 5.v,
            ),
            child: Text(
              "Giá fare",
              style: theme.textTheme.bodySmall,
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(left: 8.h),
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
  Widget _buildSaleInput(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15.v,
        bottom: 14.v,
      ),
      decoration: AppDecoration.bg,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Text(
              "Giá sale (full + phí xuất vé)",
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
  Widget _buildFlightCardList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 15.v,
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return FlightcardlistItemWidget();
      },
    );
  }
}

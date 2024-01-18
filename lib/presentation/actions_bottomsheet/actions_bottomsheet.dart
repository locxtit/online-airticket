import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ActionsBottomsheet extends StatelessWidget {
  const ActionsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            decoration: AppDecoration.light,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "Thao tác",
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
          ),
          SizedBox(height: 18.v),
          CustomOutlinedButton(
            text: "Xem mặt vé",
            buttonStyle: CustomButtonStyles.outlineBlueTL6,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          SizedBox(height: 15.v),
          CustomOutlinedButton(
            text: "SMS mặt vé",
            buttonStyle: CustomButtonStyles.outlineBlueTL6,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          SizedBox(height: 15.v),
          CustomOutlinedButton(
            text: "Chi tiết vé",
            buttonStyle: CustomButtonStyles.outlineBlueTL6,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class ColumnlistsectionItemWidget extends StatelessWidget {
  const ColumnlistsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 105.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDesktopChatBOnprimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 8.v),
          Text(
            "Chuyên đề BSP",
            style: CustomTextStyles.bodySmallOnPrimary11,
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  const FrameItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 105.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDesktopChatB,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 8.v),
          Text(
            "Chuyên đề BSP",
            style: CustomTextStyles.bodySmallOnPrimaryContainer11,
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  const GridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTakeOffTrave,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 8.v),
          Text(
            "Đặt chuyến bay",
            style: CustomTextStyles.bodySmallOnPrimaryContainer11,
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}

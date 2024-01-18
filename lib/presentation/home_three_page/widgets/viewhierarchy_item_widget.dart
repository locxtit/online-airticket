import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
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
            imagePath: ImageConstant.imgAirportPlane,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 7.v),
          Text(
            "Tân Sơn Nhất",
            style: CustomTextStyles.bodySmallOnPrimaryContainer11,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class InputcodeItemWidget extends StatelessWidget {
  const InputcodeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 13.v,
        bottom: 12.v,
      ),
      decoration: AppDecoration.bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWarning,
            height: 24.v,
            width: 34.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "Vietnam Airlines (VN)",
              style: CustomTextStyles.bodyMedium13,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCheckSquareC,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(right: 1.h),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SuccessPopupDialog extends StatelessWidget {
  const SuccessPopupDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 61.v,
            width: 49.h,
          ),
          SizedBox(height: 23.v),
          Text(
            "Thao tác thành công",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 6.v),
          Container(
            width: 227.h,
            margin: EdgeInsets.symmetric(horizontal: 26.h),
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. Ornare orci et faucibus odio enim lorem.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 15.v),
          CustomOutlinedButton(
            text: "Đóng",
            buttonStyle: CustomButtonStyles.outlineBlueTL6,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
        ],
      ),
    );
  }
}

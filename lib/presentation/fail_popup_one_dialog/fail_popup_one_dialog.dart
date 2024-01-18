import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class FailPopupOneDialog extends StatelessWidget {
  const FailPopupOneDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Xác nhận thao tác",
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
          Container(
            decoration: AppDecoration.light.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomOutlinedButton(
                    text: "Bỏ qua",
                    margin: EdgeInsets.only(right: 7.h),
                    buttonStyle: CustomButtonStyles.outlineBlueTL6,
                    buttonTextStyle: theme.textTheme.titleSmall!,
                  ),
                ),
                Expanded(
                  child: CustomOutlinedButton(
                    text: "Đồng ý",
                    margin: EdgeInsets.only(left: 7.h),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}

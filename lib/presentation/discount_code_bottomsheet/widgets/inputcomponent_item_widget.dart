import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class InputcomponentItemWidget extends StatelessWidget {
  const InputcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWarning,
            height: 24.v,
            width: 34.h,
            margin: EdgeInsets.symmetric(vertical: 7.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Vietnam Airlines (VN)",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  "123 456 789",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

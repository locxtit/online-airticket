import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class BookingcomponentItemWidget extends StatelessWidget {
  const BookingcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 135.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBuilding2Rea,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 7.v),
          ),
          Container(
            width: 54.h,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 3.v,
            ),
            child: Text(
              "Đặt phòng\nkhách sạn",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallOnPrimaryContainer11.copyWith(
                height: 1.64,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

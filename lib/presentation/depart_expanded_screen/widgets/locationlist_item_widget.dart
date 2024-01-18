import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class LocationlistItemWidget extends StatelessWidget {
  const LocationlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.v,
      width: 340.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2.h),
              padding: EdgeInsets.symmetric(horizontal: 112.h),
              decoration: AppDecoration.light,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3.v),
                decoration: AppDecoration.fillBlue.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: SizedBox(
                  width: 110.h,
                  child: Text(
                    "Seoul",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
                      height: 2.00,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(right: 230.h),
              padding: EdgeInsets.symmetric(vertical: 3.v),
              decoration: AppDecoration.fillBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3,
              ),
              child: SizedBox(
                width: 110.h,
                child: Text(
                  "Tokyo",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
                    height: 2.00,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(left: 230.h),
              padding: EdgeInsets.symmetric(vertical: 3.v),
              decoration: AppDecoration.fillBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3,
              ),
              child: SizedBox(
                width: 110.h,
                child: Text(
                  "Paris",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
                    height: 2.00,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

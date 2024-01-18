import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class ItemlistsectionItemWidget extends StatelessWidget {
  const ItemlistsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 305.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle9,
            height: 75.adaptSize,
            width: 75.adaptSize,
            radius: BorderRadius.circular(
              6.h,
            ),
          ),
          Container(
            width: 178.h,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 2.v,
            ),
            child: Text(
              "Vietnam Airlines dành tặng Quý khách ưu đãi ĐỒNG GIÁ dịp Tết Giáp Thìn chỉ từ 666.000 VND/chiều hạng Phổ thông",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

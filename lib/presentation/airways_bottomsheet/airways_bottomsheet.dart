import '../airways_bottomsheet/widgets/inputcode_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AirwaysBottomsheet extends StatelessWidget {
  const AirwaysBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            decoration: AppDecoration.light,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "Hãng hàng không",
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUTimes,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 8.v,
              );
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return InputcodeItemWidget();
            },
          ),
          SizedBox(height: 18.v),
          CustomOutlinedButton(
            text: "Xác nhận",
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}

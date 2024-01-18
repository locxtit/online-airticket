import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_drop_down.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class BuyLuggageBottomsheet extends StatelessWidget {
  BuyLuggageBottomsheet({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Mua thêm dịch vụ hành lý",
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
          SizedBox(height: 15.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 10.v, 10.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdownGray400,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "Vũ Nguyên Hồ",
            hintStyle: theme.textTheme.bodyMedium!,
            items: dropdownItemList,
            contentPadding: EdgeInsets.only(
              left: 12.h,
              top: 13.v,
              bottom: 13.v,
            ),
            onChanged: (value) {},
          ),
          SizedBox(height: 15.v),
          Divider(
            color: appTheme.blue50,
          ),
          SizedBox(height: 14.v),
          Row(
            children: [
              Container(
                width: 64.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.secondary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Text(
                  "Chiều đi",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Hà Nội",
                  style: CustomTextStyles.labelLargeBlack900_1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowTransferBlack900,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(left: 7.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Đà Nẵng",
                  style: CustomTextStyles.labelLargeBlack900_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 10.v, 10.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdownGray400,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "15 kg",
            hintStyle: theme.textTheme.bodyMedium!,
            items: dropdownItemList1,
            contentPadding: EdgeInsets.only(
              left: 12.h,
              top: 13.v,
              bottom: 13.v,
            ),
            onChanged: (value) {},
          ),
          SizedBox(height: 15.v),
          Row(
            children: [
              Container(
                width: 64.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 6.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.secondary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Text(
                  "Chiều về",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Đà Nẵng",
                  style: CustomTextStyles.labelLargeBlack900_1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowTransferBlack900,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(left: 8.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Hà Nội",
                  style: CustomTextStyles.labelLargeBlack900_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 10.v, 10.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdownGray400,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "15 kg",
            hintStyle: theme.textTheme.bodyMedium!,
            items: dropdownItemList2,
            contentPadding: EdgeInsets.only(
              left: 12.h,
              top: 13.v,
              bottom: 13.v,
            ),
            onChanged: (value) {},
          ),
          SizedBox(height: 25.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "Hủy",
                  margin: EdgeInsets.only(right: 7.h),
                  buttonStyle: CustomButtonStyles.outlineBlueTL6,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
              ),
              Expanded(
                child: CustomOutlinedButton(
                  text: "Mua",
                  margin: EdgeInsets.only(left: 7.h),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}

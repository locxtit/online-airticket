import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AddMoreCustomersBottomsheet extends StatelessWidget {
  const AddMoreCustomersBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.light.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeaderPopup(context),
          SizedBox(height: 15.v),
          Container(
            width: 327.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Text(
              "Anh/Chị nhập mỗi dòng là thông tin của một hành khách, không phân biệt có dấu, không dấu, chữ hoa, chữ thường:\nĐịnh dạng ngày sinh: dd/MM/yyyy. Ví dụ: 20/12/2003\nGiới tính Người lớn: MR | MRS | MS. Ví dụ: TRAN THANH THU MR 20/12/1995\nGiới tính Trẻ em: MSTR | MISS. Ví dụ: DINH HOAI LINH MISS 12/04/2016\nGiới tính Em bé: INF_MSTR | INF_MISS. Ví dụ: DINH HOAI NAM INF_MSTR 12/04/2023",
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                height: 1.67,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            height: 365.v,
            width: 335.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              border: Border.all(
                color: theme.colorScheme.primaryContainer,
                width: 1.h,
              ),
            ),
          ),
          SizedBox(height: 25.v),
          _buildBtn(context),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderPopup(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.light,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Thêm nhanh hành khách",
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
    );
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomOutlinedButton(
            text: "Xủ lý thông tin",
            margin: EdgeInsets.only(right: 7.h),
            buttonStyle: CustomButtonStyles.outlineBlueTL6,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
        ),
        Expanded(
          child: CustomOutlinedButton(
            text: "Nhập",
            margin: EdgeInsets.only(left: 7.h),
          ),
        ),
      ],
    );
  }
}

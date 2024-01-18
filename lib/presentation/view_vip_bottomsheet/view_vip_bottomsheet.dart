import '../view_vip_bottomsheet/widgets/inputgrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class ViewVipBottomsheet extends StatelessWidget {
  ViewVipBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController vNguyNHController = TextEditingController();

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
          _buildHeaderPopup(context),
          SizedBox(height: 10.v),
          CustomFloatingTextField(
            controller: vNguyNHController,
            labelText: "Họ và Tên",
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "Họ và Tên",
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.only(
              top: 28.v,
              bottom: 8.v,
            ),
          ),
          SizedBox(height: 5.v),
          _buildFrame(context),
          SizedBox(height: 5.v),
          _buildFrameInput2(
            context,
            nationality: "Số điện thoại",
            country: "0909 319 182",
          ),
          SizedBox(height: 5.v),
          _buildFrameInput2(
            context,
            nationality: "Quốc tịch",
            country: "Viêt Nam",
          ),
          SizedBox(height: 5.v),
          _buildInputGrid(context),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderPopup(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.v),
      decoration: AppDecoration.light,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Thông tin khách hàng",
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
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 7.h),
          child: _buildFrameInput1(
            context,
            dateOfBirth: "Giới tính",
            birthDate: "Nam",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: _buildFrameInput1(
            context,
            dateOfBirth: "Ngày sinh",
            birthDate: "30 Thg 02, 1983",
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 55.v,
        crossAxisCount: 2,
        mainAxisSpacing: 14.h,
        crossAxisSpacing: 14.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return InputgridItemWidget();
      },
    );
  }

  /// Common widget
  Widget _buildFrameInput1(
    BuildContext context, {
    required String dateOfBirth,
    required String birthDate,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 6.v,
          ),
          decoration: AppDecoration.bg,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dateOfBirth,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.gray600,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                birthDate,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrameInput2(
    BuildContext context, {
    required String nationality,
    required String country,
  }) {
    return Container(
      width: 320.h,
      padding: EdgeInsets.only(
        top: 8.v,
        bottom: 7.v,
      ),
      decoration: AppDecoration.bg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nationality,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray600,
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            country,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}

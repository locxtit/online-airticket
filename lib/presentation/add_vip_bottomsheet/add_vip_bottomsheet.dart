import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_elevated_button.dart';
import 'package:loc_s_application_booking/widgets/custom_floating_text_field.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AddVipBottomsheet extends StatelessWidget {
  AddVipBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController nationalityController = TextEditingController();

  TextEditingController passportController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  TextEditingController passportController1 = TextEditingController();

  TextEditingController expirationDateController1 = TextEditingController();

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
          _buildThmMiKhchHngThnThit(context),
          SizedBox(height: 15.v),
          _buildCustomerInfo(context),
          SizedBox(height: 25.v),
          _buildBtn(context),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThmMiKhchHngThnThit(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      text: "Thêm mới khách hàng thân thiết",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 15.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUTimes,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimary1,
      buttonTextStyle: CustomTextStyles.titleMedium18,
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomFloatingTextField(
      controller: fullNameController,
      labelText: "Họ và Tên",
      labelStyle: theme.textTheme.bodyMedium!,
      hintText: "Họ và Tên",
    );
  }

  /// Section Widget
  Widget _buildGender(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: CustomFloatingTextField(
          controller: genderController,
          labelText: "Giới tính",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Giới tính",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: CustomFloatingTextField(
          controller: dateOfBirthController,
          labelText: "Ngày sinh",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Ngày sinh",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomFloatingTextField(
      controller: phoneNumberController,
      labelText: "Số điện thoại",
      labelStyle: theme.textTheme.bodyMedium!,
      hintText: "Số điện thoại",
    );
  }

  /// Section Widget
  Widget _buildNationality(BuildContext context) {
    return CustomFloatingTextField(
      controller: nationalityController,
      labelText: "Quốc tịch",
      labelStyle: theme.textTheme.bodyMedium!,
      hintText: "Quốc tịch",
    );
  }

  /// Section Widget
  Widget _buildPassport(BuildContext context) {
    return CustomFloatingTextField(
      width: 92.h,
      controller: passportController,
      labelText: "Passport",
      labelStyle: theme.textTheme.bodyMedium!,
      hintText: "Passport",
      contentPadding: EdgeInsets.only(top: 19.v),
      borderDecoration: FloatingTextFormFieldStyleHelper.custom,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildExpirationDate(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: CustomFloatingTextField(
          controller: expirationDateController,
          labelText: "Ngày hết hạn",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Ngày hết hạn",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassport1(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: CustomFloatingTextField(
          controller: passportController1,
          labelText: "Passport",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Passport",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExpirationDate1(BuildContext context) {
    return CustomFloatingTextField(
      width: 111.h,
      controller: expirationDateController1,
      labelText: "Ngày hết hạn",
      labelStyle: theme.textTheme.bodyMedium!,
      hintText: "Ngày hết hạn",
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.only(top: 21.v),
      borderDecoration: FloatingTextFormFieldStyleHelper.custom,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildCustomerInfo(BuildContext context) {
    return Column(
      children: [
        _buildFullName(context),
        SizedBox(height: 15.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildGender(context),
            _buildDateOfBirth(context),
          ],
        ),
        SizedBox(height: 15.v),
        _buildPhoneNumber(context),
        SizedBox(height: 15.v),
        _buildNationality(context),
        SizedBox(height: 15.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 5.h),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.border.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: _buildPassport(context),
            ),
            _buildExpirationDate(context),
          ],
        ),
        SizedBox(height: 15.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPassport1(context),
            Container(
              margin: EdgeInsets.only(left: 5.h),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.border.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: _buildExpirationDate1(context),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHy(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Hủy",
        margin: EdgeInsets.only(right: 7.h),
        buttonStyle: CustomButtonStyles.outlineBlueTL6,
        buttonTextStyle: theme.textTheme.titleSmall!,
      ),
    );
  }

  /// Section Widget
  Widget _buildLu(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Lưu",
        margin: EdgeInsets.only(left: 7.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildHy(context),
        _buildLu(context),
      ],
    );
  }
}

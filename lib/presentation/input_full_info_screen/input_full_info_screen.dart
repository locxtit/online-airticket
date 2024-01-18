import 'package:flutter/material.dart';import 'package:loc_s_application_booking/core/app_export.dart';import 'package:loc_s_application_booking/widgets/app_bar/appbar_leading_image.dart';import 'package:loc_s_application_booking/widgets/app_bar/appbar_subtitle_one.dart';import 'package:loc_s_application_booking/widgets/app_bar/custom_app_bar.dart';import 'package:loc_s_application_booking/widgets/custom_elevated_button.dart';import 'package:loc_s_application_booking/widgets/custom_floating_text_field.dart';import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';
// ignore_for_file: must_be_immutable
class InputFullInfoScreen extends StatelessWidget {InputFullInfoScreen({Key? key}) : super(key: key);

TextEditingController fullnameController = TextEditingController();

TextEditingController genderController = TextEditingController();

TextEditingController dateofbirthController = TextEditingController();

TextEditingController passportvalueController = TextEditingController();

TextEditingController expirationdateController = TextEditingController();

TextEditingController fullnameController1 = TextEditingController();

TextEditingController genderController1 = TextEditingController();

TextEditingController dateofbirthController1 = TextEditingController();

TextEditingController passportvalueController1 = TextEditingController();

TextEditingController expirationdateController1 = TextEditingController();

TextEditingController fullnameController2 = TextEditingController();

TextEditingController phonenumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.blue50, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 12.h), child: Column(children: [_buildSearch(context), SizedBox(height: 15.v), _buildInfo(context), SizedBox(height: 15.v), _buildContactInfo(context), SizedBox(height: 15.v), _buildContactInfo1(context), SizedBox(height: 15.v), _buildPanel(context)])))), bottomNavigationBar: _buildTotalPriceFooter(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 92.v, leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 10.h, top: 19.v, bottom: 49.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleOne(text: "Nhập thông tin", margin: EdgeInsets.only(left: 10.h, top: 22.v, bottom: 49.v)), styleType: Style.bgGradientnamelightblue500nameprimary); } 
/// Section Widget
Widget _buildSearch(BuildContext context) { return Container(width: 350.h, margin: EdgeInsets.only(left: 1.h), padding: EdgeInsets.all(15.h), decoration: AppDecoration.light.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(right: 46.h), child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [Container(width: 64.h, margin: EdgeInsets.only(bottom: 14.v), padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 1.v), decoration: AppDecoration.secondary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3), child: Text("Chiều đi", style: theme.textTheme.labelLarge)), Padding(padding: EdgeInsets.only(left: 10.h), child: _buildFrame1(context, locationText: "Hà Nội", timeText: "20:15")), CustomImageView(imagePath: ImageConstant.imgArrowTransferBlack900, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 7.h, top: 10.v, bottom: 8.v)), Padding(padding: EdgeInsets.only(left: 6.h), child: _buildFrame(context, cityName: "Đà Nẵng", time: "06:50")), Padding(padding: EdgeInsets.only(left: 11.h, top: 3.v), child: _buildFrame2(context, dynamicText1: "T5, 18 Thg11 ", dynamicText2: "VJ148"))])), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(right: 46.h), child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [Container(width: 64.h, margin: EdgeInsets.only(bottom: 14.v), padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v), decoration: AppDecoration.secondary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3), child: Text("Chiều về", style: theme.textTheme.labelLarge)), Padding(padding: EdgeInsets.only(left: 9.h), child: _buildFrame(context, cityName: "Đà Nẵng", time: "20:15")), CustomImageView(imagePath: ImageConstant.imgArrowTransferBlack900, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 8.h, top: 10.v, bottom: 8.v)), Padding(padding: EdgeInsets.only(left: 7.h), child: _buildFrame1(context, locationText: "Hà Nội", timeText: "06:50")), Padding(padding: EdgeInsets.only(left: 10.h, top: 3.v), child: _buildFrame2(context, dynamicText1: "T5, 18 Thg11 ", dynamicText2: "VJ148"))]))])); } 
/// Section Widget
Widget _buildNhpNhanhDanhSchHnh(BuildContext context) { return CustomOutlinedButton(text: "Nhập nhanh danh sách hành khách", rightIcon: Container(margin: EdgeInsets.only(left: 10.h), child: CustomImageView(imagePath: ImageConstant.imgUsermultiplegroupclosegeometrichumanmultiplepersonupuser, height: 22.adaptSize, width: 22.adaptSize)), buttonStyle: CustomButtonStyles.outlineBlueTL6, buttonTextStyle: theme.textTheme.titleSmall!); } 
/// Section Widget
Widget _buildFullname(BuildContext context) { return CustomFloatingTextField(controller: fullnameController, labelText: "Họ và Tên", labelStyle: theme.textTheme.bodyMedium!, hintText: "Họ và Tên"); } 
/// Section Widget
Widget _buildGender(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 5.h), child: CustomFloatingTextField(controller: genderController, labelText: "Giới tính", labelStyle: theme.textTheme.bodyMedium!, hintText: "Giới tính"))); } 
/// Section Widget
Widget _buildDateofbirth(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 5.h), child: CustomFloatingTextField(controller: dateofbirthController, labelText: "Ngày sinh", labelStyle: theme.textTheme.bodyMedium!, hintText: "Ngày sinh"))); } 
/// Section Widget
Widget _buildPassportvalue(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 5.h), child: CustomFloatingTextField(controller: passportvalueController, labelText: "Passport", labelStyle: theme.textTheme.bodyMedium!, hintText: "Passport"))); } 
/// Section Widget
Widget _buildExpirationdate(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 5.h), child: CustomFloatingTextField(controller: expirationdateController, labelText: "Ngày hết hạn", labelStyle: theme.textTheme.bodyMedium!, hintText: "Ngày hết hạn"))); } 
/// Section Widget
Widget _buildFullname1(BuildContext context) { return CustomFloatingTextField(controller: fullnameController1, labelText: "Họ và Tên", labelStyle: theme.textTheme.bodyMedium!, hintText: "Họ và Tên"); } 
/// Section Widget
Widget _buildGender1(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 5.h), child: CustomFloatingTextField(controller: genderController1, labelText: "Giới tính", labelStyle: theme.textTheme.bodyMedium!, hintText: "Giới tính"))); } 
/// Section Widget
Widget _buildDateofbirth1(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 5.h), child: CustomFloatingTextField(controller: dateofbirthController1, labelText: "Ngày sinh", labelStyle: theme.textTheme.bodyMedium!, hintText: "Ngày sinh"))); } 
/// Section Widget
Widget _buildPassportvalue1(BuildContext context) { return CustomFloatingTextField(width: 92.h, controller: passportvalueController1, labelText: "Passport", labelStyle: theme.textTheme.bodyMedium!, hintText: "Passport", contentPadding: EdgeInsets.only(top: 19.v), borderDecoration: FloatingTextFormFieldStyleHelper.custom, filled: false); } 
/// Section Widget
Widget _buildExpirationdate1(BuildContext context) { return CustomFloatingTextField(width: 111.h, controller: expirationdateController1, labelText: "Ngày hết hạn", labelStyle: theme.textTheme.bodyMedium!, hintText: "Ngày hết hạn", contentPadding: EdgeInsets.only(top: 21.v), borderDecoration: FloatingTextFormFieldStyleHelper.custom, filled: false); } 
/// Section Widget
Widget _buildThmDchV(BuildContext context) { return CustomElevatedButton(width: 132.h, text: "Thêm dịch vụ", rightIcon: Container(margin: EdgeInsets.only(left: 5.h), child: CustomImageView(imagePath: ImageConstant.imgAddcirclebuttonremovecrossaddbuttonspluscirclemathematicsmath, height: 16.adaptSize, width: 16.adaptSize))); } 
/// Section Widget
Widget _buildThmHnhKhch(BuildContext context) { return CustomElevatedButton(width: 161.h, text: "Thêm hành khách", rightIcon: Container(margin: EdgeInsets.only(left: 5.h), child: CustomImageView(imagePath: ImageConstant.imgAddcirclebuttonremovecrossaddbuttonspluscirclemathematicsmath, height: 16.adaptSize, width: 16.adaptSize))); } 
/// Section Widget
Widget _buildInfo(BuildContext context) { return Container(margin: EdgeInsets.only(left: 1.h), padding: EdgeInsets.all(15.h), decoration: AppDecoration.light.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildNhpNhanhDanhSchHnh(context), SizedBox(height: 16.v), Text("Hành khách 1", style: CustomTextStyles.titleSmallBlack900), SizedBox(height: 16.v), _buildFullname(context), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildGender(context), _buildDateofbirth(context)]), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildPassportvalue(context), _buildExpirationdate(context)]), SizedBox(height: 15.v), Divider(color: appTheme.blue50), SizedBox(height: 15.v), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Hành khách 2", style: CustomTextStyles.titleSmallBlack900), SizedBox(height: 16.v), _buildFullname1(context), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildGender1(context), _buildDateofbirth1(context)]), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(margin: EdgeInsets.only(right: 5.h), padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 7.v), decoration: AppDecoration.border.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: _buildPassportvalue1(context)), Container(margin: EdgeInsets.only(left: 5.h), padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v), decoration: AppDecoration.border.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: _buildExpirationdate1(context))])]), SizedBox(height: 15.v), Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_buildThmDchV(context), _buildThmHnhKhch(context)]))])); } 
/// Section Widget
Widget _buildFullname2(BuildContext context) { return CustomFloatingTextField(controller: fullnameController2, labelText: "Họ và Tên", labelStyle: theme.textTheme.bodyMedium!, hintText: "Họ và Tên"); } 
/// Section Widget
Widget _buildPhonenumber(BuildContext context) { return CustomFloatingTextField(controller: phonenumberController, labelText: "Số điện thoại", labelStyle: theme.textTheme.bodyMedium!, hintText: "Số điện thoại"); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomFloatingTextField(controller: emailController, labelText: "Email", labelStyle: theme.textTheme.bodyMedium!, hintText: "Email", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress); } 
/// Section Widget
Widget _buildContactInfo(BuildContext context) { return Container(margin: EdgeInsets.only(left: 1.h), padding: EdgeInsets.all(15.h), decoration: AppDecoration.light.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("Thông tin Liên hệ", style: CustomTextStyles.titleSmallBlack900), SizedBox(height: 15.v), _buildFullname2(context), SizedBox(height: 15.v), _buildPhonenumber(context), SizedBox(height: 15.v), _buildEmail(context)])); } 
/// Section Widget
Widget _buildThmHnhLKGi(BuildContext context) { return CustomElevatedButton(width: 176.h, text: "Thêm hành lý ký gửi", rightIcon: Container(margin: EdgeInsets.only(left: 5.h), child: CustomImageView(imagePath: ImageConstant.imgAddcirclebuttonremovecrossaddbuttonspluscirclemathematicsmath, height: 16.adaptSize, width: 16.adaptSize)), alignment: Alignment.center); } 
/// Section Widget
Widget _buildThmHnhLKGi1(BuildContext context) { return CustomElevatedButton(width: 176.h, text: "Thêm hành lý ký gửi", rightIcon: Container(margin: EdgeInsets.only(left: 5.h), child: CustomImageView(imagePath: ImageConstant.imgAddcirclebuttonremovecrossaddbuttonspluscirclemathematicsmath, height: 16.adaptSize, width: 16.adaptSize)), alignment: Alignment.center); } 
/// Section Widget
Widget _buildContactInfo1(BuildContext context) { return Container(margin: EdgeInsets.only(left: 1.h), padding: EdgeInsets.all(15.h), decoration: AppDecoration.light.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("Thông tin hành lý", style: CustomTextStyles.titleSmallBlack900), SizedBox(height: 15.v), Row(children: [Container(width: 64.h, padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 1.v), decoration: AppDecoration.secondary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3), child: Text("Chiều đi", style: theme.textTheme.labelLarge)), Padding(padding: EdgeInsets.only(left: 10.h, top: 2.v, bottom: 2.v), child: Text("Hà Nội", style: CustomTextStyles.labelLargeBlack900_1)), CustomImageView(imagePath: ImageConstant.imgArrowTransferBlack900, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 7.h)), Padding(padding: EdgeInsets.only(left: 6.h, top: 2.v, bottom: 2.v), child: Text("Đà Nẵng", style: CustomTextStyles.labelLargeBlack900_1))]), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(right: 11.h), child: _buildWalletMoneyP(context, textProp: "Vật dụng cá nhân, tham khảo chính sách của hãng\nhàng không")), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 24.h), child: _buildFrame3(context, dynamicText: "Chi tiết")), SizedBox(height: 10.v), _buildFrame4(context, description: "Đã bao gồm hành lý xách tay:\n1x7 kg/ người lớn, 1x7 kg/ trẻ em,\nkhông bao gồm trẻ sơ sinh"), SizedBox(height: 9.v), _buildFrame5(context, text: "Không có hành lý ký gửi miễn cước"), SizedBox(height: 11.v), _buildThmHnhLKGi(context), SizedBox(height: 15.v), Divider(color: appTheme.blue50), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(right: 11.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Container(width: 64.h, padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v), decoration: AppDecoration.secondary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3), child: Text("Chiều về", style: theme.textTheme.labelLarge)), Padding(padding: EdgeInsets.only(left: 9.h, top: 2.v, bottom: 2.v), child: Text("Đà Nẵng", style: CustomTextStyles.labelLargeBlack900_1)), CustomImageView(imagePath: ImageConstant.imgArrowTransferBlack900, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 8.h)), Padding(padding: EdgeInsets.only(left: 7.h, top: 2.v, bottom: 2.v), child: Text("Hà Nội", style: CustomTextStyles.labelLargeBlack900_1))]), SizedBox(height: 10.v), _buildWalletMoneyP(context, textProp: "Vật dụng cá nhân, tham khảo chính sách của hãng\nhàng không"), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 24.h), child: _buildFrame3(context, dynamicText: "Chi tiết")), SizedBox(height: 10.v), _buildFrame4(context, description: "Đã bao gồm hành lý xách tay:\n1x7 kg/ người lớn, 1x7 kg/ trẻ em,\nkhông bao gồm trẻ sơ sinh"), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(right: 87.h), child: _buildFrame5(context, text: "Không có hành lý ký gửi miễn cước")), SizedBox(height: 11.v), _buildThmHnhLKGi1(context)]))])); } 
/// Section Widget
Widget _buildPanel(BuildContext context) { return Container(margin: EdgeInsets.only(left: 1.h), padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 13.v), decoration: AppDecoration.light.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Cần hỗ trợ đặc biệt", style: theme.textTheme.bodyMedium)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 16.adaptSize, width: 16.adaptSize)])); } 
/// Section Widget
Widget _buildTipTc(BuildContext context) { return CustomOutlinedButton(width: 85.h, text: "Tiếp tục", margin: EdgeInsets.only(left: 20.h)); } 
/// Section Widget
Widget _buildTotalPriceFooter(BuildContext context) { return Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 25.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.customBorderTL10), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("1.961.250 đ", style: CustomTextStyles.titleMediumYellow900), Padding(padding: EdgeInsets.only(top: 4.v), child: Text("Giá khứ hồi", style: theme.textTheme.bodySmall))]), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 12.v), child: Text("Chi tiết", style: CustomTextStyles.labelLargeBlue700)), CustomImageView(imagePath: ImageConstant.imgArrowUpBlue700, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 2.h, top: 12.v, bottom: 12.v)), _buildTipTc(context)])); } 
/// Common widget
Widget _buildFrame(BuildContext context, {required String cityName, required String time, }) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(cityName, style: CustomTextStyles.labelLargeBlack900_1.copyWith(color: appTheme.black900)), SizedBox(height: 2.v), Text(time, style: CustomTextStyles.labelLargeOnPrimaryContainer.copyWith(color: theme.colorScheme.onPrimaryContainer))]); } 
/// Common widget
Widget _buildFrame1(BuildContext context, {required String locationText, required String timeText, }) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Text(locationText, style: CustomTextStyles.labelLargeBlack900_1.copyWith(color: appTheme.black900))), SizedBox(height: 2.v), Text(timeText, style: CustomTextStyles.labelLargeOnPrimaryContainer.copyWith(color: theme.colorScheme.onPrimaryContainer))]); } 
/// Common widget
Widget _buildFrame2(BuildContext context, {required String dynamicText1, required String dynamicText2, }) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(dynamicText1, style: CustomTextStyles.bodySmallErrorContainer11.copyWith(color: theme.colorScheme.errorContainer)), SizedBox(height: 2.v), Text(dynamicText2, style: CustomTextStyles.labelMediumErrorContainer.copyWith(color: theme.colorScheme.errorContainer))]); } 
/// Common widget
Widget _buildWalletMoneyP(BuildContext context, {required String textProp, }) { return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgWalletMoneyP, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(bottom: 22.v)), Expanded(child: Container(width: 285.h, margin: EdgeInsets.only(left: 10.h), child: Text(textProp, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallErrorContainer.copyWith(color: theme.colorScheme.errorContainer, height: 1.50))))]); } 
/// Common widget
Widget _buildFrame3(BuildContext context, {required String dynamicText, }) { return Row(children: [Text(dynamicText, style: CustomTextStyles.labelLargeBlue700.copyWith(color: appTheme.blue700)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 2.h))]); } 
/// Common widget
Widget _buildFrame4(BuildContext context, {required String description, }) { return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgBackpackBagB, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(bottom: 40.v)), Container(width: 189.h, margin: EdgeInsets.only(left: 9.h), child: Text(description, maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallErrorContainer.copyWith(color: theme.colorScheme.errorContainer, height: 1.50)))]); } 
/// Common widget
Widget _buildFrame5(BuildContext context, {required String text, }) { return Row(children: [CustomImageView(imagePath: ImageConstant.imgBaggageCheck, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 10.h), child: Text(text, style: CustomTextStyles.bodySmallErrorContainer.copyWith(color: theme.colorScheme.errorContainer)))]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }

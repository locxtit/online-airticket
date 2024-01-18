import 'package:flutter/material.dart';import 'package:loc_s_application_booking/core/app_export.dart';import 'package:loc_s_application_booking/widgets/app_bar/appbar_leading_image.dart';import 'package:loc_s_application_booking/widgets/app_bar/appbar_subtitle_one.dart';import 'package:loc_s_application_booking/widgets/app_bar/custom_app_bar.dart';import 'package:loc_s_application_booking/widgets/custom_floating_text_field.dart';import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';
// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {ForgotPasswordScreen({Key? key}) : super(key: key);

TextEditingController accountController = TextEditingController();

TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1), gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [theme.colorScheme.onPrimary.withOpacity(1), appTheme.blue50])), child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 25.v), child: Column(children: [CustomFloatingTextField(controller: accountController, labelText: "Tài khoản", labelStyle: theme.textTheme.bodyMedium!, hintText: "Tài khoản", prefix: Container(margin: EdgeInsets.only(left: 10.h, right: 24.h), child: CustomImageView(imagePath: ImageConstant.imgUserCircleSin, height: 22.adaptSize, width: 22.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 54.v)), SizedBox(height: 20.v), CustomFloatingTextField(controller: emailController, labelText: "Email", labelStyle: theme.textTheme.bodyMedium!, hintText: "Email", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.only(left: 10.h, right: 24.h), child: CustomImageView(imagePath: ImageConstant.imgLock, height: 16.v, width: 20.h)), prefixConstraints: BoxConstraints(maxHeight: 54.v)), SizedBox(height: 20.v), CustomOutlinedButton(text: "Yêu cầu mật khẩu mới"), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 43.v, leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 13.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleOne(text: "Quên mật khẩu", margin: EdgeInsets.only(left: 10.h)), styleType: Style.bgOutline); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }

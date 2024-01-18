import '../login_three_screen/widgets/frame_item_widget.dart';
import '../login_three_screen/widgets/item_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_elevated_button.dart';
import 'package:loc_s_application_booking/widgets/custom_floating_text_field.dart';

class LoginThreeScreen extends StatelessWidget {
  LoginThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mTKhUController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: 770.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 770.v,
                        width: double.maxFinite,
                        decoration: AppDecoration.bg2,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: EdgeInsets.only(left: 153.h),
                                padding: EdgeInsets.symmetric(horizontal: 9.h),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.imgPlane141x221,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 23.h,
                                        right: 20.h,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorOnprimary1x1,
                                            height: 1.adaptSize,
                                            width: 1.adaptSize,
                                            margin: EdgeInsets.only(
                                              top: 33.v,
                                              bottom: 37.v,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorOnprimary,
                                            height: 2.adaptSize,
                                            width: 2.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 2.h,
                                              top: 16.v,
                                              bottom: 52.v,
                                            ),
                                          ),
                                          Container(
                                            height: 2.adaptSize,
                                            width: 2.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 22.h,
                                              top: 33.v,
                                              bottom: 35.v,
                                            ),
                                            decoration: BoxDecoration(
                                              color: theme.colorScheme.onPrimary
                                                  .withOpacity(1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1.h,
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorOnprimary,
                                            height: 2.adaptSize,
                                            width: 2.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 5.h,
                                              top: 47.v,
                                              bottom: 20.v,
                                            ),
                                          ),
                                          Container(
                                            height: 5.adaptSize,
                                            width: 5.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 10.h,
                                              top: 47.v,
                                              bottom: 16.v,
                                            ),
                                            decoration: BoxDecoration(
                                              color: theme.colorScheme.onPrimary
                                                  .withOpacity(1),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                2.h,
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPlane,
                                            height: 71.v,
                                            width: 78.h,
                                            margin: EdgeInsets.only(left: 24.h),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 4.adaptSize,
                                        width: 4.adaptSize,
                                        margin: EdgeInsets.only(left: 91.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1),
                                          borderRadius: BorderRadius.circular(
                                            2.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.v),
                                    Container(
                                      height: 2.adaptSize,
                                      width: 2.adaptSize,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1),
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 149.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorOnprimary,
                                              height: 4.adaptSize,
                                              width: 4.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 2.v),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMobile,
                                              height: 8.adaptSize,
                                              width: 8.adaptSize,
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorOnprimary,
                                              height: 2.adaptSize,
                                              width: 2.adaptSize,
                                              margin: EdgeInsets.only(
                                                left: 2.h,
                                                top: 3.v,
                                                bottom: 2.v,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 29.v),
                                  ],
                                ),
                              ),
                            ),
                            _buildLoginFrame(context),
                          ],
                        ),
                      ),
                    ),
                    _buildFrameColumn(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginFrame(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 27.h,
          top: 45.v,
          right: 27.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLayer1,
              height: 102.v,
              width: 120.h,
            ),
            SizedBox(height: 30.v),
            Column(
              children: [
                Container(
                  decoration: AppDecoration.border.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 52.v,
                        width: 42.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 15.v,
                        ),
                        decoration: AppDecoration.secondary,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUserCircleSin,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          top: 7.v,
                          bottom: 7.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tài khoản",
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 5.v),
                            Text(
                              "KH0000305",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                CustomFloatingTextField(
                  controller: mTKhUController,
                  labelText: "Mật khẩu",
                  labelStyle: CustomTextStyles.bodyMediumGray600_1,
                  hintText: "Mật khẩu",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  prefix: Container(
                    margin: EdgeInsets.only(
                      left: 10.h,
                      right: 24.h,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgPadlocksquare1combinationcombolocklockedpadlocksecuresecurityshieldkeyhole,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgInvisible1disableeyeeyeballhideoffview,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(30.h, 23.v, 30.h, 11.v),
                ),
                SizedBox(height: 21.v),
                Text(
                  "Quên mật khẩu?",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 21.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        height: 40.v,
                        text: "Đăng nhập",
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFingerprint,
                      height: 40.v,
                      width: 30.h,
                      margin: EdgeInsets.only(left: 20.h),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          bottom: 128.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 69.v,
              child: ListView.separated(
                padding: EdgeInsets.only(right: 20.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 10.h,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return FrameItemWidget();
                },
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              height: 95.v,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 10.h,
                  );
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ItemItemWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

class SplashScreenThreeScreen extends StatelessWidget {
  const SplashScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimary.withOpacity(1),
                appTheme.blue50,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildMobileRow(context),
                SizedBox(height: 35.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLayer1,
                  height: 124.v,
                  width: 145.h,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 345.h,
        margin: EdgeInsets.only(left: 29.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup488,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 33.h,
                bottom: 163.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMobile,
                        height: 7.adaptSize,
                        width: 7.adaptSize,
                        margin: EdgeInsets.only(top: 9.v),
                      ),
                      Container(
                        height: 17.v,
                        width: 36.h,
                        margin: EdgeInsets.only(left: 1.h),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(
                            18.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorOnprimary,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 48.h,
                      margin: EdgeInsets.only(left: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorOnprimary1x1,
                            height: 1.adaptSize,
                            width: 1.adaptSize,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 3.v,
                  bottom: 46.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 189.h,
                      margin: EdgeInsets.only(right: 32.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorOnprimary,
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                              top: 88.v,
                              bottom: 32.v,
                            ),
                          ),
                          Container(
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            margin: EdgeInsets.only(
                              left: 16.h,
                              top: 91.v,
                              bottom: 25.v,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgPlaneOnprimary,
                            height: 125.v,
                            width: 121.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Container(
                      height: 6.adaptSize,
                      width: 6.adaptSize,
                      margin: EdgeInsets.only(left: 50.h),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          3.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      height: 3.adaptSize,
                      width: 3.adaptSize,
                      margin: EdgeInsets.only(left: 68.h),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 81.h,
                        margin: EdgeInsets.only(left: 139.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMobile,
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              margin: EdgeInsets.only(
                                top: 2.v,
                                bottom: 4.v,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgMobile,
                              height: 13.adaptSize,
                              width: 13.adaptSize,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorOnprimary,
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              margin: EdgeInsets.only(
                                left: 4.h,
                                top: 6.v,
                                bottom: 3.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

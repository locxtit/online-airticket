import '../home_screen/widgets/bookingcomponent1_item_widget.dart';
import '../home_screen/widgets/flightbooking_item_widget.dart';
import '../home_screen/widgets/viewhierarchy1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 770.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.bg2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildLayerOne(context),
                      Spacer(),
                      SizedBox(height: 19.v),
                      _buildHomeHomeHo(context),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    bottom: 50.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFlightBooking(context),
                      SizedBox(height: 21.v),
                      Text(
                        "Bảng điện tử tại sân bay",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 10.v),
                      _buildViewHierarchy(context),
                      SizedBox(height: 21.v),
                      Text(
                        "Dịch vụ khác",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 10.v),
                      _buildBookingComponent(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLayerOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLayer1,
              height: 94.v,
              width: 110.h,
              margin: EdgeInsets.only(
                top: 18.v,
                bottom: 28.v,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 13.h),
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorOnprimary1x1,
                        height: 1.adaptSize,
                        width: 1.adaptSize,
                        margin: EdgeInsets.only(
                          top: 33.v,
                          bottom: 37.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorOnprimary,
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
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorOnprimary,
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
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(
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
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(left: 91.h),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
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
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 52.h,
                      margin: EdgeInsets.only(left: 149.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorOnprimary,
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgMobile,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorOnprimary,
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeHomeHo(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNavTrangCh,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Trang chủ",
                  style: CustomTextStyles.labelMediumBlue700Medium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              bottom: 2.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNavQlTCh,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Qlý đặt chỗ",
                  style: CustomTextStyles.bodySmallOnPrimaryContainer11,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 47,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNavCIT,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Cài đặt",
                  style: CustomTextStyles.bodySmallOnPrimaryContainer11,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 1.h,
              bottom: 3.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNavTIKhoN,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Tài khoản",
                  style: CustomTextStyles.bodySmallOnPrimaryContainer11,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFlightBooking(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 70.v,
        crossAxisCount: 3,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 11,
      itemBuilder: (context, index) {
        return FlightbookingItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return SizedBox(
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
          return Viewhierarchy1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingComponent(BuildContext context) {
    return SizedBox(
      height: 56.v,
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
        itemCount: 3,
        itemBuilder: (context, index) {
          return Bookingcomponent1ItemWidget();
        },
      ),
    );
  }
}

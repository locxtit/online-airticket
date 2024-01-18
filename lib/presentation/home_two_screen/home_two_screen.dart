import '../home_two_screen/widgets/flightbooking1_item_widget.dart';
import '../home_two_screen/widgets/frame1_item_widget.dart';
import '../home_two_screen/widgets/viewhierarchy2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/presentation/home_three_page/home_three_page.dart';
import 'package:loc_s_application_booking/presentation/profile_page/profile_page.dart';
import 'package:loc_s_application_booking/presentation/setting_fare_page/setting_fare_page.dart';
import 'package:loc_s_application_booking/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:loc_s_application_booking/widgets/app_bar/appbar_subtitle.dart';
import 'package:loc_s_application_booking/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:loc_s_application_booking/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:loc_s_application_booking/widgets/app_bar/appbar_title.dart';
import 'package:loc_s_application_booking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:loc_s_application_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:loc_s_application_booking/widgets/custom_bottom_app_bar.dart';
import 'package:loc_s_application_booking/widgets/custom_floating_button.dart';

class HomeTwoScreen extends StatelessWidget {
  HomeTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 608.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 770.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
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
                      _buildFrame(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildFooter(context),
        floatingActionButton: CustomFloatingButton(
          height: 50,
          width: 50,
          backgroundColor: appTheme.blue700,
          decoration: FloatingButtonStyleHelper.outlineOnPrimaryTL25,
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame3944,
            height: 25.0.v,
            width: 25.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 70.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgThumbsUp,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 13.v,
          bottom: 14.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "Hi, Vu Nguyen Ho",
              margin: EdgeInsets.only(right: 40.h),
            ),
            SizedBox(height: 5.v),
            Row(
              children: [
                AppbarSubtitleTwo(
                  text: "Số dư:",
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 6.v,
                  ),
                ),
                AppbarTitle(
                  text: "999,999,999",
                  margin: EdgeInsets.only(left: 5.h),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitle(
          text: "VNĐ",
          margin: EdgeInsets.only(
            left: 5.h,
            top: 42.v,
            right: 15.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(15.h, 26.v, 29.h, 12.v),
        ),
      ],
      styleType: Style.bgGradientnamelightblue500nameprimary,
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
        return Flightbooking1ItemWidget();
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
          return Viewhierarchy2ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
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
          return Frame1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Trangch:
        return AppRoutes.homeThreePage;
      case BottomBarEnum.Qltch:
        return "/";
      case BottomBarEnum.Cit:
        return AppRoutes.settingFarePage;
      case BottomBarEnum.Tikhon:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeThreePage:
        return HomeThreePage();
      case AppRoutes.settingFarePage:
        return SettingFarePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home Three - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeThreeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "depart expanded",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.departExpandedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ticket list Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ticketListTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ticket detail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ticketDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "input info",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.inputInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "input full info",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.inputFullInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "search ticket One - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.searchTicketOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "depart",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.departScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "popular destinations",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.popularDestinationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ticket more - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ticketMoreTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "input info Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.inputInfoTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "customers",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.customersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "manage ticket",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.manageTicketScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "booking - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "general info",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.generalInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "topup - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.topupTabContainerScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}

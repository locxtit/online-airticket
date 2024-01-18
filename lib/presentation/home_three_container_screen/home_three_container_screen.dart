import 'package:flutter/material.dart';import 'package:loc_s_application_booking/core/app_export.dart';import 'package:loc_s_application_booking/presentation/home_three_page/home_three_page.dart';import 'package:loc_s_application_booking/presentation/profile_page/profile_page.dart';import 'package:loc_s_application_booking/presentation/setting_fare_page/setting_fare_page.dart';import 'package:loc_s_application_booking/widgets/custom_bottom_app_bar.dart';import 'package:loc_s_application_booking/widgets/custom_floating_button.dart';
// ignore_for_file: must_be_immutable
class HomeThreeContainerScreen extends StatelessWidget {HomeThreeContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeThreePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildFooter(context), floatingActionButton: CustomFloatingButton(height: 50, width: 50, backgroundColor: appTheme.yellow900, child: CustomImageView(imagePath: ImageConstant.imgFrame3944, height: 25.0.v, width: 25.0.h)), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked)); } 
/// Section Widget
Widget _buildFooter(BuildContext context) { return CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Trangch: return AppRoutes.homeThreePage; case BottomBarEnum.Qltch: return "/"; case BottomBarEnum.Cit: return AppRoutes.settingFarePage; case BottomBarEnum.Tikhon: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homeThreePage: return HomeThreePage(); case AppRoutes.settingFarePage: return SettingFarePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }

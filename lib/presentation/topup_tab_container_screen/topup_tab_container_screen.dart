import 'package:flutter/material.dart';import 'package:loc_s_application_booking/core/app_export.dart';import 'package:loc_s_application_booking/presentation/topup_page/topup_page.dart';import 'package:loc_s_application_booking/widgets/app_bar/appbar_leading_image.dart';import 'package:loc_s_application_booking/widgets/app_bar/appbar_subtitle_one.dart';import 'package:loc_s_application_booking/widgets/app_bar/custom_app_bar.dart';class TopupTabContainerScreen extends StatefulWidget {const TopupTabContainerScreen({Key? key}) : super(key: key);

@override TopupTabContainerScreenState createState() =>  TopupTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class TopupTabContainerScreenState extends State<TopupTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Container(height: 770.v, width: double.maxFinite, decoration: AppDecoration.fillBlue, child: Stack(alignment: Alignment.topCenter, children: [_buildAppBar(context), Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(left: 12.h, top: 58.v, right: 12.h), decoration: AppDecoration.light.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildTabview(context), SizedBox(height: 580.v, child: TabBarView(controller: tabviewController, children: [TopupPage(), TopupPage()]))])))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 48.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleOne(text: "Topup công nợ", margin: EdgeInsets.only(left: 10.h, top: 8.v, bottom: 49.v)), styleType: Style.bgGradientnamelightblue500nameprimary); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 40.v, width: 320.h, decoration: BoxDecoration(color: appTheme.blue50, borderRadius: BorderRadius.circular(3.h)), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.black900, labelStyle: TextStyle(fontSize: 13.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w400), unselectedLabelColor: theme.colorScheme.onPrimaryContainer, unselectedLabelStyle: TextStyle(fontSize: 13.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w400), indicatorPadding: EdgeInsets.all(6.0.h), indicator: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1), borderRadius: BorderRadius.circular(3.h)), tabs: [Tab(child: Text("Topup Enviet")), Tab(child: Text("Tạo QR chuyển khoản"))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }

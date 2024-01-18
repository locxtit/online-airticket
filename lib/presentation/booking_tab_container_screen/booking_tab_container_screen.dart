import 'package:flutter/material.dart';import 'package:loc_s_application_booking/core/app_export.dart';import 'package:loc_s_application_booking/presentation/booking_page/booking_page.dart';import 'package:loc_s_application_booking/widgets/app_bar/appbar_leading_image.dart';import 'package:loc_s_application_booking/widgets/app_bar/appbar_subtitle_one.dart';import 'package:loc_s_application_booking/widgets/app_bar/appbar_trailing_image.dart';import 'package:loc_s_application_booking/widgets/app_bar/custom_app_bar.dart';class BookingTabContainerScreen extends StatefulWidget {const BookingTabContainerScreen({Key? key}) : super(key: key);

@override BookingTabContainerScreenState createState() =>  BookingTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class BookingTabContainerScreenState extends State<BookingTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.blue50, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, margin: EdgeInsets.only(bottom: 5.v), decoration: AppDecoration.light, child: Column(children: [_buildTabview(context), SizedBox(height: 504.v, child: TabBarView(controller: tabviewController, children: [BookingPage(), BookingPage(), BookingPage()]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 43.v, leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 13.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleOne(text: "Danh sách đặt chỗ", margin: EdgeInsets.only(left: 10.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgMagnifyingglassglasssearchmagnifying, margin: EdgeInsets.fromLTRB(15.h, 6.v, 15.h, 14.v))], styleType: Style.bgOutline_1); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 46.v, width: double.maxFinite, decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1)), child: TabBar(controller: tabviewController, isScrollable: true, tabs: [Tab(child: Text("PNR & ngày đặt")), Tab(child: Text("Hãng")), Tab(child: Text("Tình trạng"))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }

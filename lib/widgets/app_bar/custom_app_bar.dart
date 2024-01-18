import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 78.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 78.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgGradientnamelightblue500nameprimary:
        return Container(
          height: 78.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.h),
            ),
            gradient: LinearGradient(
              begin: Alignment(1.01, 0.04),
              end: Alignment(0.03, 0.92),
              colors: [
                appTheme.lightBlue500,
                theme.colorScheme.primary,
              ],
            ),
          ),
        );
      case Style.bgOutline_1:
        return Container(
          height: 43.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: theme.colorScheme.primaryContainer,
                width: 1.h,
              ),
            ),
            gradient: LinearGradient(
              begin: Alignment(1.01, 0.04),
              end: Alignment(0.03, 0.92),
              colors: [
                appTheme.lightBlue500,
                theme.colorScheme.primary,
              ],
            ),
          ),
        );
      case Style.bgOutline:
        return Container(
          height: 43.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: appTheme.blue50,
                width: 1.h,
              ),
            ),
            gradient: LinearGradient(
              begin: Alignment(1.01, 0.04),
              end: Alignment(0.03, 0.92),
              colors: [
                appTheme.lightBlue500,
                theme.colorScheme.primary,
              ],
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: 33.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgGradientnamelightblue500nameprimary,
  bgOutline_1,
  bgOutline,
  bgFill,
}

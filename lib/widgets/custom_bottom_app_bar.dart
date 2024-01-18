import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavTrangCh,
        activeIcon: ImageConstant.imgNavTrangCh,
        title: "Trang chủ",
        type: BottomBarEnum.Trangch,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavQlTCh,
      activeIcon: ImageConstant.imgNavQlTCh,
      title: "Qlý đặt chỗ",
      type: BottomBarEnum.Qltch,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCIT,
      activeIcon: ImageConstant.imgNavCIT,
      title: "Cài đặt",
      type: BottomBarEnum.Cit,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavTIKhoN,
      activeIcon: ImageConstant.imgNavTIKhoN,
      title: "Tài khoản",
      type: BottomBarEnum.Tikhon,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: theme.colorScheme.onPrimary.withOpacity(1),
      child: SizedBox(
        height: 22.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                            color: appTheme.blue700,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: CustomTextStyles.labelMediumBlue700Medium
                                  .copyWith(
                                color: appTheme.blue700,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].icon,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: CustomTextStyles
                                  .bodySmallOnPrimaryContainer11
                                  .copyWith(
                                color: theme.colorScheme.onPrimaryContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Trangch,
  Qltch,
  Cit,
  Tikhon,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

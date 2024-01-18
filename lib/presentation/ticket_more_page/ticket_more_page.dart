import '../ticket_more_page/widgets/ticketcomponentsection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TicketMorePage extends StatefulWidget {
  const TicketMorePage({Key? key})
      : super(
          key: key,
        );

  @override
  TicketMorePageState createState() => TicketMorePageState();
}

class TicketMorePageState extends State<TicketMorePage>
    with AutomaticKeepAliveClientMixin<TicketMorePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    _buildFilterSection(context),
                    _buildInfoSection(context),
                    _buildInfoSection1(context),
                    _buildSeatsSection(context),
                    _buildTicketComponentSection(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilterSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.bgLight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowUpBlack900,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Ưu tiên bay thẳng",
              style: CustomTextStyles.labelLargeBlack900_1,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgVerticalSlider,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Bộ lọc",
              style: CustomTextStyles.labelLargeBlack900_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInfoSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(15.h, 6.v, 15.h, 5.v),
      decoration: AppDecoration.bg,
      child: Text(
        "Giá vé khứ hồi cho mỗi hành khách, đã bao gồm thuế và phí",
        style: theme.textTheme.bodySmall,
      ),
    );
  }

  /// Section Widget
  Widget _buildInfoSection1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.light,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "20:15",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "VJ204",
                            style:
                                CustomTextStyles.labelLargeOnPrimaryContainer_1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        top: 6.v,
                        bottom: 4.v,
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowTransfer,
                            height: 10.v,
                            width: 24.h,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "1g 20p",
                            style: CustomTextStyles.bodySmall10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27.h),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "06:50",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "B1, ECO8",
                            style:
                                CustomTextStyles.labelLargeOnPrimaryContainer_1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgWarning,
                      height: 16.v,
                      width: 23.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "Vietjet Air",
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "1.850.250 đ",
                    style: CustomTextStyles.titleMediumYellow900Medium,
                  ),
                ),
                SizedBox(height: 19.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "Hạng ghế khác",
                        style: CustomTextStyles.labelMediumBlue700Medium,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(left: 2.h),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeatsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      decoration: AppDecoration.bg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildFrame(
            context,
            textValue1: "T1",
            textValue2: "1.850.250 đ",
            textValue3: "B9",
            textValue4: "1.860.250 đ",
          ),
          SizedBox(height: 10.v),
          _buildFrame(
            context,
            textValue1: "V5",
            textValue2: "1.880.250 đ",
            textValue3: "J3",
            textValue4: "1.880.250 đ",
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTicketComponentSection(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 1.v,
        );
      },
      itemCount: 7,
      itemBuilder: (context, index) {
        return TicketcomponentsectionItemWidget();
      },
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String textValue1,
    required String textValue2,
    required String textValue3,
    required String textValue4,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineBlue50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textValue1,
                  style:
                      CustomTextStyles.labelLargeOnPrimaryContainer13.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
                Text(
                  textValue2,
                  style: CustomTextStyles.labelLargeYellow900.copyWith(
                    color: appTheme.yellow900,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineBlue50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textValue3,
                  style:
                      CustomTextStyles.labelLargeOnPrimaryContainer13.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
                Text(
                  textValue4,
                  style: CustomTextStyles.labelLargeYellow900.copyWith(
                    color: appTheme.yellow900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

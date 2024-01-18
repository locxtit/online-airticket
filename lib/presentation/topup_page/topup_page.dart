import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';
import 'package:loc_s_application_booking/widgets/custom_outlined_button.dart';
import 'package:loc_s_application_booking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TopupPage extends StatefulWidget {
  const TopupPage({Key? key})
      : super(
          key: key,
        );

  @override
  TopupPageState createState() => TopupPageState();
}

class TopupPageState extends State<TopupPage>
    with AutomaticKeepAliveClientMixin<TopupPage> {
  TextEditingController contentController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.light,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  children: [
                    _buildInputRow1(context),
                    SizedBox(height: 15.v),
                    _buildInputRow2(context),
                    SizedBox(height: 15.v),
                    _buildInputRow3(context),
                    SizedBox(height: 15.v),
                    _buildInputRow4(context),
                    SizedBox(height: 15.v),
                    _buildInputRow5(context),
                    SizedBox(height: 15.v),
                    CustomTextFormField(
                      controller: contentController,
                      hintText: "Nội dung",
                      textInputAction: TextInputAction.done,
                      maxLines: 10,
                    ),
                    SizedBox(height: 15.v),
                    CustomOutlinedButton(
                      text: "Tạo QR",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputRow1(BuildContext context) {
    return Container(
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 52.v,
            width: 42.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.secondary,
            child: CustomImageView(
              imagePath: ImageConstant.imgUserCircleSin,
              height: 22.adaptSize,
              width: 22.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 4.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "Mã đại lý",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "*",
                        style: CustomTextStyles.bodySmallYellow900,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Text(
                  "KH0000305",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputRow2(BuildContext context) {
    return Container(
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        children: [
          Container(
            height: 52.v,
            width: 42.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.secondary,
            child: CustomImageView(
              imagePath: ImageConstant.imgBankInstituti,
              height: 22.adaptSize,
              width: 22.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ngân hàng",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  "ACB",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputRow3(BuildContext context) {
    return Container(
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 52.v,
            width: 42.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.secondary,
            child: CustomImageView(
              imagePath: ImageConstant.imgUserProtection,
              height: 22.adaptSize,
              width: 22.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 6.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chủ tài khoản",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Công ty cổ phần Én Việt",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputRow4(BuildContext context) {
    return Container(
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 52.v,
            width: 42.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.secondary,
            child: CustomImageView(
              imagePath: ImageConstant.imgCreditCard1,
              height: 22.adaptSize,
              width: 22.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 6.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Số tài khoản",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  "86667778888",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputRow5(BuildContext context) {
    return Container(
      decoration: AppDecoration.border.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 52.v,
            width: 42.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.secondary,
            child: CustomImageView(
              imagePath: ImageConstant.imgDollarCoinAcOnprimary,
              height: 22.adaptSize,
              width: 22.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chọn số tiền",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  "50.000.000 đ",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

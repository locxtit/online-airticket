import 'package:flutter/material.dart';
import 'package:loc_s_application_booking/core/app_export.dart';

// ignore: must_be_immutable
class InputgridItemWidget extends StatelessWidget {
  const InputgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 8.v,
        bottom: 7.v,
      ),
      decoration: AppDecoration.bg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "CMND/ CCCD",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 4.v),
          Text(
            "0123 456 789",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}

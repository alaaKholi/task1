import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/helpers/colors_helper.dart';
import 'package:flutter_application_1/ui/helpers/text_helper.dart';
import 'package:flutter_application_1/ui/helpers/text_style_helper.dart';



Future<void> showCustomDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Container(
          margin: const EdgeInsetsDirectional.only(bottom: 10.0, top: 12.0),
          child: Text(TextHelper.log_out,
              style: heavyAvenirTextStyle(size: 20))),
      content: Text(TextHelper.r_u_sure_logout,
          style: mediumAvenirTextStyle(
              color: ColorsHelper.main_light_color_8A8A8F)),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          child: Text(TextHelper.log_out,
              style:
                  mediumAvenirTextStyle(size: 16.0, color: ColorsHelper.red)),
          onPressed: () {
            //TODO:// sign out functionality
            Navigator.pop(context);
          },
        ),
        CupertinoDialogAction(
          child: Text(TextHelper.cancle,
              style: mediumAvenirTextStyle(
                  size: 16.0, color: ColorsHelper.main_light_color_8A8A8F)),
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    ),
  );
}

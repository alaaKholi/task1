import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/helpers/colors_helper.dart';
import 'package:flutter_application_1/ui/helpers/text_style_helper.dart';

import '../constants.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onNext,
    required this.text,
  }) : super(key: key);

  final VoidCallback? onNext;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onNext,
      child: Text(
        text,
        style: heavyAvenirTextStyle(size: 18.0, color: ColorsHelper.white),
      ),
      style: ElevatedButton.styleFrom(
        //minimumSize: const Size(300, 50),
        padding: const EdgeInsets.only(top: 12.0, bottom: 14.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        primary: ColorsHelper.secondary_color_392C23,
      ),
    );
  }
}

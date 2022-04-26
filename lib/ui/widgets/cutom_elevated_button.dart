import 'package:flutter/material.dart';

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
        style: textStyleButtonWhite,
      ),
      style: elevatedEuttonStyle,
    );
  }
}

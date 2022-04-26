import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    required this.iconURL,
    required this.onPressed,
    this.color, this.trailing,
  }) : super(key: key);
  final String title;
  final String iconURL;
  final Function onPressed;
  final Color? color;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => onPressed()),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: color ?? mainTextColor,
            fontSize: 14.0,
          ),
        ),
        trailing: trailing,
        leading: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xffF7F7F8)),
          child: SvgPicture.asset(
            iconURL,
            color: color ?? secondaryColorBlack,
          ),
        ),
      ),
    );
  }
}

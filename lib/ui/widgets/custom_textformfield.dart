import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/helpers/assets_helper.dart';
import 'package:flutter_application_1/ui/helpers/colors_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.controller,
    this.validator,
  }) : super(key: key);
  TextEditingController? controller;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        obscureText: true,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          iconColor: ColorsHelper.main_light_color_8A8A8F,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: '**********',
          suffixIcon: SvgPicture.asset(
            AssetsHelper.ic_lock,
            color: ColorsHelper.main_light_color_8A8A8F,
            fit: BoxFit.scaleDown,
          ),
        ),
        validator: validator);
  }
}

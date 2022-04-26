import 'package:flutter/material.dart';
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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: '**********',
          suffixIcon: SvgPicture.asset(
            'assets/icons/Iconly-Light-Lock.svg',
            color: const Color(0xff8A8A8F),
            fit: BoxFit.scaleDown,
          ),
        ),
        validator: validator);
  }
}

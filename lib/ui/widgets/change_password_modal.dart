import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/helpers/assets_helper.dart';
import 'package:flutter_application_1/ui/helpers/colors_helper.dart';
import 'package:flutter_application_1/ui/helpers/text_helper.dart';
import 'package:flutter_application_1/ui/helpers/text_style_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'custom_textformfield.dart';
import 'cutom_elevated_button.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({
    Key? key,
  }) : super(key: key);
  static final GlobalKey<FormState> _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController =
        TextEditingController();
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        top: 8.0,
        right: 16.0,
        left: 16.0,
      ),
      decoration: const BoxDecoration(
        color: ColorsHelper.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 32,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: ColorsHelper.border_color_EFEFF5,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsHelper.main_background_color_F7F7F8,
                        ),
                        child: SvgPicture.asset(
                          AssetsHelper.ic_cancle,
                          color: ColorsHelper.main_color_392C23,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    TextHelper.change_password,
                    style: heavyAvenirTextStyle(size: 20.0),
                  ),
                ),
                const SizedBox(height: 37.0),
                Form(
                  key: _formGlobalKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        TextHelper.password,
                        style: mediumAvenirTextStyle(),
                      ),
                      const SizedBox(height: 8.0),
                      CustomTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return TextHelper.please_enter_password;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        TextHelper.new_password,
                        style: mediumAvenirTextStyle(),
                      ),
                      const SizedBox(height: 8.0),
                      CustomTextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return TextHelper.please_enter_new_password;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        TextHelper.confirm_new_password,
                        style: mediumAvenirTextStyle(),
                      ),
                      const SizedBox(height: 8.0),
                      CustomTextFormField(
                        controller: _confirmPasswordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return TextHelper.please_confirm_new_password;
                          }
                          if (value != _passwordController.text) {
                            return TextHelper.un_matched;
                          }

                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32.0),
                CustomElevatedButton(
                  onNext: () {
                    if (_formGlobalKey.currentState!.validate()) {}
                  },
                  text: TextHelper.save_changes,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

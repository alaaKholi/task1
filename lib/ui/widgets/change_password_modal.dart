import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'custom_textformfield.dart';
import 'cutom_elevated_button.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formGlobalKey = GlobalKey<FormState>();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController =
        TextEditingController();

    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 35,
        top: 15.0,
        right: 25.0,
        left: 25.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
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
                      color: Color(0xffF7F7F8),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/cancle.svg',
                      color: const Color(0xff392C23),
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
                'تغيير كلمة المرور',
                style: TextStyle(fontSize: 20, color: secondaryColorBlack),
              ),
            ),
            const SizedBox(height: 37.0),
            Form(
              key: _formGlobalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'كلمة المرور',
                    style: TextStyle(
                      fontSize: 14,
                      color: secondaryColorBlack,
                    ),
                  ),
                  CustomTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'الرجاء إدخال كلمة المرور';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'كلمة المرور الجديدة',
                    style: TextStyle(
                      fontSize: 14,
                      color: secondaryColorBlack,
                    ),
                  ),
                  CustomTextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'الرجاء إدخال كلمة المرور الجديدة';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'تأكيد كلمة المرور الجديدة',
                    style: TextStyle(
                      fontSize: 14,
                      color: secondaryColorBlack,
                    ),
                  ),
                  CustomTextFormField(
                    controller: _confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'الرجاء إدخال تأكيد كلمة المرور الجديدة';
                      }
                      if (value != _passwordController.text) {
                        return 'غير متطابقتين';
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
                text: 'حفظ التغييرات')
          ],
        ),
      ),
    );
  }
}

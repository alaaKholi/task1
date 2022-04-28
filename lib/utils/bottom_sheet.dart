import 'package:flutter/material.dart';

import '../ui/widgets/change_password_modal.dart';

Future<dynamic> showCustomBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      enableDrag: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (context) {
        return const ChangePassword();
      });
}

import 'package:flutter/cupertino.dart';

import '../ui/constants.dart';

Future<void> showCustomDialog(BuildContext context) {
  return showCupertinoDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(
        'تسجيل الخروج',
        style: TextStyle(fontSize: 20.0, color: mainTextColor),
      ),
      content: Text('هل أنت متأكد أنك تريد تسجيل الخروج من حسابك؟',
          style: TextStyle(color: secondaryColorGray, fontSize: 14.0)),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          child: const Text(
            'تسجيل الخروج',
            style: TextStyle(fontSize: 16.0, color: Color(0xffff4040)),
          ),
          onPressed: () {
            //TODO:// sign out functionality
            Navigator.pop(context);
          },
        ),
        CupertinoDialogAction(
          child: Text(
            'الغاء',
            style: TextStyle(fontSize: 16.0, color: secondaryColorGray),
          ),
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    ),
  );
}

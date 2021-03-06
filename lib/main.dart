import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/helpers/colors_helper.dart';
import 'package:flutter_application_1/ui/screens/more_screen.dart';
import 'package:flutter_application_1/utils/create_material_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'AvenirArabic',
          primarySwatch: MaterialColor(
              ColorsHelper.secondary_color_392C23.value,
              ColorsHelper.secondary_color_swatches),
        ),
        locale: const Locale('ar'),
        home:  Directionality(
          textDirection: TextDirection.rtl,
          child: MoreScreen(),
        ));
  }
}

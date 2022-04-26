import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    this.title,
    Key? key,
    this.actions,
  }) : super(key: key);
  final String? title;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
          child: Container(
            color: const Color(0xffEFEFF5),
            height: 1.0,
          ),
          preferredSize: const Size.fromHeight(1.0)),
      iconTheme: IconThemeData(color: mainTextColor),
      title:
          Text(title!, style: TextStyle(color: mainTextColor, fontSize: 18.0)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leading: Builder(
        builder: (BuildContext context) {
          return InkWell(
            child: SvgPicture.asset('assets/icons/menu.svg',
                color: mainTextColor, fit: BoxFit.scaleDown),
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

// class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const MyAppBar({
//     this.title,
//     Key? key,
//   }) : super(key: key);
//   final String? title;
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       iconTheme: IconThemeData(color: mainColor),
//       title: Text(title!, style: TextStyle(color: mainColor)),
//       elevation: 0.0,
//       backgroundColor: Colors.transparent,
//       centerTitle: true,
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(40.0);
// }

import 'package:flutter/material.dart';
import '../../ui/helpers/assets_helper.dart';
import '../../ui/helpers/colors_helper.dart';
import '../../ui/helpers/text_style_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          color: ColorsHelper.border_color_EFEFF5,
          height: 1.0,
        ),
        preferredSize: const Size.fromHeight(1.0),
      ),
      //iconTheme: IconThemeData(color: mainTextColor),
      title: Text(title!, style: heavyAvenirTextStyle(size: 18.0)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leading: Builder(
        builder: (BuildContext context) {
          return InkWell(
            child: SvgPicture.asset(AssetsHelper.ic_menu,
                color: ColorsHelper.main_color_392C23, fit: BoxFit.scaleDown),
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
  Size get preferredSize => const Size.fromHeight(55.0);
}

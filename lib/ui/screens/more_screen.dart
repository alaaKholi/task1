import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/helpers/assets_helper.dart';
import 'package:flutter_application_1/ui/helpers/colors_helper.dart';
import 'package:flutter_application_1/ui/helpers/text_helper.dart';
import 'package:flutter_application_1/ui/widgets/custom_appbar.dart';
import 'package:flutter_application_1/ui/widgets/custom_badge.dart';
import 'package:flutter_application_1/utils/dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/bottom_sheet.dart';
import '../constants.dart';
import '../helpers/text_style_helper.dart';
import '../widgets/change_password_modal.dart';

class MoreScreen extends StatelessWidget {
  MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> texts = [
      TextHelper.personal_info,
      TextHelper.about_municipality,
      TextHelper.settings,
      TextHelper.important_phones,
      TextHelper.photos_albums,
      TextHelper.contact_us,
      TextHelper.faq,
      TextHelper.log_out,
    ];
    final List<String> icons = [
      AssetsHelper.ic_profile,
      AssetsHelper.ic_info,
      AssetsHelper.ic_settings,
      AssetsHelper.ic_call,
      AssetsHelper.ic_image,
      AssetsHelper.ic_message,
      AssetsHelper.ic_info_questions,
      AssetsHelper.ic_logout,
    ];
    return Scaffold(
        backgroundColor: ColorsHelper.white,
        appBar: CustomAppBar(
          title: TextHelper.more,
          actions: [
            CustomBadge(
              value: '2',
              right: 10.0,
              top: 10.0,
              color: ColorsHelper.red,
              child: IconButton(
                icon: SvgPicture.asset(AssetsHelper.ic_notification),
                onPressed: () {},
              ),
            ),
          ],
        ),
        drawer: const Drawer(),
        body: ListView.separated(
          itemBuilder: (context, int index) {
            return Container(
              margin: const EdgeInsetsDirectional.fromSTEB(0, 8.0, 0, 8.0),
              child: ListTile(
                onTap: () {
                  if (index == 0) {
                    showCustomBottomSheet(context);
                  }
                  if (index == texts.length - 1) {
                    showCustomDialog(context);
                  }
                },
                title: Text(
                  texts[index],
                  style: heavyAvenirTextStyle(
                      color: index == texts.length - 1
                          ? ColorsHelper.red
                          : ColorsHelper.main_color_392C23),
                ),
                trailing: index != texts.length - 1
                    ? const Icon(
                        Icons.arrow_forward_ios,
                        color: ColorsHelper.main_light_color_8A8A8F,
                        size: 12,
                      )
                    : null,
                leading: Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: ColorsHelper.main_background_color_F7F7F8),
                  child: SvgPicture.asset(
                    icons[index],
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, int index) => const Divider(
            height: 0.5,
            indent: 16.0,
            endIndent: 16.0,
          ),
          itemCount: texts.length,
        ));
  }
}

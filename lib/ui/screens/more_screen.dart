import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/custom_appbar.dart';
import 'package:flutter_application_1/ui/widgets/custom_badge.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/dialog.dart';
import '../constants.dart';
import '../widgets/change_password_modal.dart';
import '../widgets/custom_list_tile.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'المزيد',
        actions: [
          CustomBadge(
            value: '2',
            right: 10,
            top: 10,
            color: Colors.red,
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/Notification.svg'),
              onPressed: () {},
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: ListView(
        children: [
          CustomListTile(
            title: 'بياناتي الشخصية',
            iconURL: 'assets/icons/Profile.svg',
            onPressed: () {
              showModalBottomSheet(
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
            },
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColorGray,
              size: 15,
            ),
          ),
          CustomListTile(
            title: 'عن البلدية',
            iconURL: 'assets/icons/Info.svg',
            onPressed: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColorGray,
              size: 15,
            ),
          ),
          CustomListTile(
            title: 'الإعدادات',
            iconURL: 'assets/icons/Setting.svg',
            onPressed: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColorGray,
              size: 15,
            ),
          ),
          CustomListTile(
            title: 'أرقام تهمك',
            iconURL: 'assets/icons/Call.svg',
            onPressed: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColorGray,
              size: 15,
            ),
          ),
          CustomListTile(
            title: 'ألبومات الصور',
            iconURL: 'assets/icons/Image 2.svg',
            onPressed: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColorGray,
              size: 15,
            ),
          ),
          CustomListTile(
            title: 'اتصل بنا',
            iconURL: 'assets/icons/Message.svg',
            onPressed: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColorGray,
              size: 15,
            ),
          ),
          CustomListTile(
            title: 'الأسئلة الشائعة',
            iconURL: 'assets/icons/Info Circle.svg',
            onPressed: () {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColorGray,
              size: 15,
            ),
          ),
          CustomListTile(
            title: 'تسجيل الخروج',
            iconURL: 'assets/icons/Logout.svg',
            color: Colors.red,
            onPressed: () {
              print('objecttt');
              showCustomDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meditation_app/constants/size_config.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:meditation_app/screens/profile_screen/components/profile_edit_screen.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  String? title;

  MyAppBar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          const Spacer(flex: 5),
          Image.asset("assets/main/logo.png"),
          const Spacer(flex: 6),
          InkWell(
            onTap: () {
              Provider.of<ProfileProvider>(context, listen: false)
                  .selectedIndex2 = 3;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfileEditScreen(),
                ),
              );
              Provider.of<ProfileProvider>(context, listen: false).notify();
            },
            child: (title! != "edit")
                ? Image.asset("assets/main/profilemain.png")
                : Text(title!),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(
    double.infinity,
    getProportionScreenHeight(51),
  );
}

import 'package:flutter/material.dart';
import 'package:meditation_app/constants/size_config.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:meditation_app/screens/sound_screen/sound_screen.dart';
import 'package:meditation_app/widget/my_appbar.dart';
import 'package:provider/provider.dart';
import 'package:meditation_app/widget/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor:const Color(0xff253334),
      appBar: (context.watch<ProfileProvider>().selectedIndex == 2)
          ? MyAppBar(title: "edit")
          : MyAppBar(title: "nothitng"),
      body: (context.watch<ProfileProvider>().selectedIndex == 1 &&
              context.watch<ProfileProvider>().page == 2)
          ? const SoundScreen()
          : context.read<ProfileProvider>().bodies(),
      bottomNavigationBar: bottomNavbar(context),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:provider/provider.dart';
bottomNavbar(BuildContext context){
  return BottomNavigationBar(
    backgroundColor:const Color(0xff253334),
    onTap: (e) {
      Provider.of<ProfileProvider>(context, listen: false).selectedIndex = e;
      Provider.of<ProfileProvider>(context, listen: false).notify();

    },
    currentIndex: context.watch<ProfileProvider>().selectedIndex,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.music_note),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "",
      ),
    ],
  );
}
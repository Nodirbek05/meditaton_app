import 'package:flutter/material.dart';
import 'package:meditation_app/constants/size_config.dart';
import 'package:meditation_app/screens/sounds_screen/components/list_of_musics.dart';
import 'package:meditation_app/screens/sounds_screen/components/main_card.dart';

class SoundsScreen extends StatefulWidget {
  const SoundsScreen({Key? key}) : super(key: key);

  @override
  _SoundsScreenState createState() => _SoundsScreenState();
}

class _SoundsScreenState extends State<SoundsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor:const Color(0xff253334),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MainCardWidget.mainCardWidget(context),
            ListOfMusics.listOfMusic,
          ],
        ),
      ),
    );
  }
}

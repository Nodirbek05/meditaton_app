import 'package:flutter/material.dart';
import 'package:meditation_app/constants/size_config.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:meditation_app/provider/sounds_provider.dart';
import 'package:provider/src/provider.dart';

class MainCardWidget {
  static Widget mainCardWidget(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(
            context.watch<SoundsProvider>().backgroundImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.watch<SoundsProvider>().title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(5.0),
                  ),
                  Text(
                    context.watch<SoundsProvider>().body,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(15.0),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(getProportionScreenWidth(139),
                          getProportionScreenHeight(25.0)),
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10.0,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      context.read<ProfileProvider>().changePage();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "watch now",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.play_circle_fill,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

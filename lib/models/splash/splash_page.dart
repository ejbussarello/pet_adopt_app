import 'package:flutter/material.dart';
import 'package:pet_adopt_app/shared/themes/appColor.dart';
import 'package:pet_adopt_app/shared/themes/appImages.dart';
import 'package:pet_adopt_app/shared/themes/appTextStyles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.card,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(AppImages.splashLogo),
          Column(
            children: [
              Text("My Pet", style: TextStyles.titleSplash),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Taking care of a pet is my favorite, it helps me to gaimr stress and fatigue.",
                  style: TextStyles.bodySplash,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 10,
              primary: AppColors.button,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
            child: Container(
              width: size.width * 0.7,
              child: Text(
                'Pular',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

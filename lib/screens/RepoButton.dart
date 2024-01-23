import 'package:flutter/material.dart';
import 'package:medium/utils/MColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class RepoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Check out the Repo',
      color: mLimeColor,
      textStyle: boldTextStyle(color: Colors.white),
      shapeBorder: RoundedRectangleBorder(borderRadius: radius(10)),
      onTap: () {
        launch("https://github.com/muhammad-fiaz/MediumApp-Flutter");
      },
    );
  }
}

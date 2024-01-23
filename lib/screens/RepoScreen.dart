import 'package:flutter/material.dart';
import 'package:medium/screens/RepoButton.dart';
import 'package:medium/utils/AppWidget.dart';
import 'package:medium/utils/MColors.dart';
import 'package:nb_utils/nb_utils.dart';

class PurchaseMoreScreen extends StatefulWidget {
  final bool? enableAppbar;

  PurchaseMoreScreen({this.enableAppbar = false});

  @override
  _PurchaseMoreScreenState createState() => _PurchaseMoreScreenState();
}

class _PurchaseMoreScreenState extends State<PurchaseMoreScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mGreyColor,
        body: Stack(
          children: [
            Icon(Icons.arrow_back, size: 24).paddingAll(16).onTap(() {
              finish(context);
            }).visible(widget.enableAppbar!),
            SizedBox(
              width: context.width(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      decoration: boxDecorationDefault(shape: BoxShape.circle),
                      padding: EdgeInsets.all(16),
                      child: commonCacheImageWidget(
                        "images/medium/mtopics/app_ic_medium.png",
                        height: 100,
                      ).cornerRadiusWithClipRRect(90)),
                  22.height,
                  Text(
                    'This is the Template is still in Active Development.',
                    style: boldTextStyle(size: 22, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  16.height,
                  RepoButton(),
                ],
              ),
            ).paddingAll(16),
          ],
        ),
      ),
    );
  }
}

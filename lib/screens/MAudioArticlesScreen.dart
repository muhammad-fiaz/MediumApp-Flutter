import 'dart:core';

import 'package:flutter/material.dart';
import 'package:medium/screens/RepoScreen.dart';
import 'package:medium/utils/MColors.dart';
import 'package:nb_utils/nb_utils.dart';

class MAudioArticlesScreen extends StatefulWidget {
  static String tag = '/MAudioArticlesScreen';
  final String? appBarTitle;

  const MAudioArticlesScreen({Key? key, this.appBarTitle}) : super(key: key);

  @override
  MAudioArticlesScreenState createState() => MAudioArticlesScreenState();
}

class MAudioArticlesScreenState extends State<MAudioArticlesScreen> {
  bool isFollow = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mGreyColor,
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: isFollow
                ? MaterialButton(
                    minWidth: 100,
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    onPressed: () {
                      setState(() {
                        isFollow = !isFollow;
                      });
                    },
                    color: mLimeColor,
                    child: Text("Following"),
                  )
                : OutlinedButton(
                    child: Text("Follow", style: primaryTextStyle(color: white)),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                      side: BorderSide(color: mLimeColor),
                    ),
                    onPressed: () {
                      setState(() {
                        isFollow = !isFollow;
                      });
                    },
                  ),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: white,
          onPressed: () {
            finish(context);
          },
        ),
        backgroundColor: black,
        title: Text(widget.appBarTitle!, style: boldTextStyle(size: 18, color: white)),
      ),
      body: PurchaseMoreScreen(),
    );
  }
}

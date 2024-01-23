import 'package:flutter/material.dart';
import 'package:medium/screens/RepoScreen.dart';
import 'package:medium/utils/MColors.dart';
import 'package:medium/utils/MWidget.dart';
import 'package:nb_utils/nb_utils.dart';

// ignore: must_be_immutable
class MStatsScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mGreyColor,
        key: scaffoldKey,
        drawer: Drawer(
          child: SideDrawer(),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              openDrawer();
            },
            color: white,
          ),
          backgroundColor: black,
          title: Text("Stats"),
        ),
        body: PurchaseMoreScreen(),
      ),
    );
  }
}

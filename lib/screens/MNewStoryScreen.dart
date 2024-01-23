import 'package:flutter/material.dart';
import 'package:medium/screens/RepoScreen.dart';
import 'package:nb_utils/nb_utils.dart';

class MNewStoryScreen extends StatefulWidget {
  static String tag = '/MNewStoryScreen';

  @override
  MNewStoryScreenState createState() => MNewStoryScreenState();
}

class MNewStoryScreenState extends State<MNewStoryScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Publish", style: primaryTextStyle(size: 18, color: Colors.green)),
          ),
        ],
        backgroundColor: black,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            finish(context);
          },
          color: grey,
        ),
      ),
      body: PurchaseMoreScreen(),
    );
  }
}

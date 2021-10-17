import 'package:ar_ctu/screens/home/home_page.dart';
import 'package:ar_ctu/utils/app_colors.dart';
import 'package:flutter/material.dart';

class NavigatorBuilder extends StatefulWidget {
  const NavigatorBuilder({Key? key}) : super(key: key);

  @override
  _NavigatorBuilderState createState() => _NavigatorBuilderState();
}

class _NavigatorBuilderState extends State<NavigatorBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.AliceBlue,
      body: HomePage(),
    );
  }
}

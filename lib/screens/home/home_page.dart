import 'package:ar_ctu/screens/home/property_type.dart';
import 'package:ar_ctu/screens/home/recommended.dart';
import 'package:ar_ctu/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'home_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(),
            PrepertyType(),
            Recommended(),
          ],
        ),
      ),
    );
  }
}

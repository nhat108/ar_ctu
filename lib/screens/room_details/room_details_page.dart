import 'package:ar_ctu/screens/room_details/room_appbar.dart';
import 'package:ar_ctu/screens/room_details/slide_photo.dart';
import 'package:ar_ctu/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'map_view.dart';
import 'room_details.dart';
import 'view_ar_bar.dart';

class RoomDetailsPage extends StatefulWidget {
  const RoomDetailsPage({Key? key}) : super(key: key);

  @override
  _RoomDetailsPageState createState() => _RoomDetailsPageState();
}

class _RoomDetailsPageState extends State<RoomDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.AliceBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              RoomAppBar(),
              SlidePhoto(),
              RoomDetails(),
              MapView(),
              ViewArBar(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ar_ctu/utils/app_assets.dart';
import 'package:ar_ctu/utils/app_styles.dart';
import 'package:ar_ctu/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoomAppBar extends StatelessWidget {
  const RoomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 40,
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300]!.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SvgPicture.asset(
                AppAssets.arrowBack,
                width: 9,
              ),
            ),
          ),
          Text(
            "Room",
            style: AppStyles.textSize18(),
          ),
          CacheImageNetworkWidget(
              width: 40,
              height: 40,
              borderRadius: 10,
              imageUrl:
                  'https://www.eventworld.co/blob/images/pg/the-weeknd_d186b_opgh.jpg')
        ],
      ),
    );
  }
}

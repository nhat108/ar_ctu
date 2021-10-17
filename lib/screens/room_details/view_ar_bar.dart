import 'package:ar_ctu/utils/app_colors.dart';
import 'package:ar_ctu/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ViewArBar extends StatelessWidget {
  const ViewArBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: AppColors.LightSkyBlue,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "View in 3D",
              style: AppStyles.textSize18(),
            ),
          ),
        ],
      ),
    );
  }
}

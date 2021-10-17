import 'package:ar_ctu/utils/app_colors.dart';
import 'package:ar_ctu/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sunny Apartment",
                    style: AppStyles.textSize16(),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Diện tích: 400m2",
                    style: AppStyles.textSize12(
                      color: AppColors.CarnationPink,
                    ),
                  )
                ],
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.CarnationPink,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Owning a apartment make you feel beautiful and it is something everyone dream",
            style: AppStyles.textSize12(
              color: AppColors.CarnationPink,
            ),
          ),
        ],
      ),
    );
  }
}
